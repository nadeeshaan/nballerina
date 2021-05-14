// Implementation specific to basic type error.
import semtype.bdd;

public function errorDetail(SemType detail) returns SemType {
    SubtypeData sd = subtypeData(detail, UT_MAPPING_RO);
    if sd == true {
        return ERROR;
    }
    if sd == false {
        // XXX This should be reported as an error
        return NEVER;
    }
    return new SemType(1 << (UT_ERROR + UT_COUNT), [[UT_ERROR, sd]]);
}

// distinctId must be >= 0
public function errorDistinct(int distinctId) returns SemType {
    bdd:Bdd bdd = bdd:atom(-distinctId - 1);
    return new SemType(1 << (UT_ERROR + UT_COUNT), [[UT_ERROR, bdd]]);
}

// Similar to mappingSubtypeRoIsEmpty,
// except that we use bddEveryPositive to ignore the distinct ids
function errorSubtypeIsEmpty(TypeCheckContext tc, SubtypeData t) returns boolean {
    bdd:Bdd b = bddFixReadOnly(<bdd:Bdd>t);
    BddMemo? mm = tc.mappingMemo[b];
    BddMemo m;
    if mm is () {
        m = { bdd: b };
        tc.mappingMemo.add(m);
    }
    else {
        m = mm;
        boolean? res = m.isEmpty;
        if res is () {
            return true;
        }
        else {
            return res;
        }
    }
    boolean isEmpty = bddEveryPositive(tc, b, (), (), mappingFormulaIsEmpty);
    m.isEmpty = isEmpty;
    return isEmpty;    
}

final UniformTypeOps errorOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: errorSubtypeIsEmpty
};

