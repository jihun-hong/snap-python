%pythoncode %{

#
# define __getitem__ for [] addressing
#
def getitem_hash(self, i):
    return self.GetDat(i)

def setitem_hash(self, key, value):
    self.AddDat(key, value)

def delitem_hash(self, key):
    self.DelKey(key)

def len_hash(self):
    return self.Len()

def clear_hash(self):
    self.Clr()

def copy_hash(self):
    return self

def get_hash(self, key):
    if not key in self:
        return None
    else:
        return self[key]

def items_hash(self):
    ret_list = []
    for key in self:
        ret_list.append((key, self[key]))
    return ret_list

def keys_hash(self):
    ret_list = []
    for key in self:
        ret_list.append(key)
    return ret_list

def pop_hash(self, key):
    ret_value = self[key]
    self.DelKey(key)
    return ret_value

def setdefault_hash(self, key, default):
    if key not in self:
        self[key] = default
        return default
    else:
        return self[key]

def update_hash(self, hash):
    for key in hash:
        self[key] = hash[key]

def values_hash(self):
    ret_list = []
    for key in self:
        ret_list.append(self[key])
    return ret_list

def copy_hash(self):
    return self


#
# define iterator for THash
#

class IterHash:
    def __init__(self, hash):
        self.hash = hash
        self.iter = None

    def __iter__(self):
        return self

    def __next__(self):
        return self.next()

    def next(self):
        if self.hash.Len() == 0:
            raise StopIteration
        if not self.iter:
            self.iter = self.hash.BegI()
            if not self.iter:
                raise StopIteration
            if self.iter:
                return self.iter.GetKey()
            return self.iter

        if self.iter.IsEnd():
            raise StopIteration

        self.iter.Next()

        if self.iter.IsEnd():
            raise StopIteration

        if self.iter:
            return self.iter.GetKey()
        return self.iter

def iterhash(self):
    return IterHash(self)

TIntH.__getitem__ = getitem_hash
TIntH.__setitem__ = setitem_hash
TIntH.__delitem__ = delitem_hash
TIntH.__len__ = len_hash
TIntH.__iter__ = iterhash
TIntH.clear = clear_hash
TIntH.get = get_hash
TIntH.items = items_hash
TIntH.keys = keys_hash
TIntH.pop = pop_hash
TIntH.setdefault = setdefault_hash
TIntH.update = update_hash
TIntH.values = values_hash
TIntH.copy = copy_hash
TIntIntH.__getitem__ = getitem_hash
TIntIntH.__setitem__ = setitem_hash
TIntIntH.__delitem__ = delitem_hash
TIntIntH.__len__ = len_hash
TIntIntH.__iter__ = iterhash
TIntIntH.clear = clear_hash
TIntIntH.get = get_hash
TIntIntH.items = items_hash
TIntIntH.keys = keys_hash
TIntIntH.pop = pop_hash
TIntIntH.setdefault = setdefault_hash
TIntIntH.update = update_hash
TIntIntH.values = values_hash
TIntIntH.copy = copy_hash
TIntFltH.__getitem__ = getitem_hash
TIntFltH.__setitem__ = setitem_hash
TIntFltH.__delitem__ = delitem_hash
TIntFltH.__len__ = len_hash
TIntFltH.__iter__ = iterhash
TIntFltH.clear = clear_hash
TIntFltH.get = get_hash
TIntFltH.items = items_hash
TIntFltH.keys = keys_hash
TIntFltH.pop = pop_hash
TIntFltH.setdefault = setdefault_hash
TIntFltH.update = update_hash
TIntFltH.values = values_hash
TIntFltH.copy = copy_hash
TIntStrH.__getitem__ = getitem_hash
TIntStrH.__setitem__ = setitem_hash
TIntStrH.__delitem__ = delitem_hash
TIntStrH.__len__ = len_hash
TIntStrH.__iter__ = iterhash
TIntStrH.clear = clear_hash
TIntStrH.get = get_hash
TIntStrH.items = items_hash
TIntStrH.keys = keys_hash
TIntStrH.pop = pop_hash
TIntStrH.setdefault = setdefault_hash
TIntStrH.update = update_hash
TIntStrH.values = values_hash
TIntStrH.copy = copy_hash
TIntPrFltH.__getitem__ = getitem_hash
TIntPrFltH.__setitem__ = setitem_hash
TIntPrFltH.__delitem__ = delitem_hash
TIntPrFltH.__len__ = len_hash
TIntPrFltH.__iter__ = iterhash
TIntPrFltH.clear = clear_hash
TIntPrFltH.get = get_hash
TIntPrFltH.items = items_hash
TIntPrFltH.keys = keys_hash
TIntPrFltH.pop = pop_hash
TIntPrFltH.setdefault = setdefault_hash
TIntPrFltH.update = update_hash
TIntPrFltH.values = values_hash
TIntPrFltH.copy = copy_hash
TStrIntH.__getitem__ = getitem_hash
TStrIntH.__setitem__ = setitem_hash
TStrIntH.__iter__ = iterhash
TStrIntH.__delitem__ = delitem_hash
TStrIntH.__len__ = len_hash
TStrIntH.clear = clear_hash
TStrIntH.get = get_hash
TStrIntH.items = items_hash
TStrIntH.keys = keys_hash
TStrIntH.pop = pop_hash
TStrIntH.setdefault = setdefault_hash
TStrIntH.update = update_hash
TStrIntH.values = values_hash
TStrIntH.copy = copy_hash
%}


#if SNAP_ALL
%pythoncode %{
TUInt64H.__iter__ = iterhash
TUInt64H.__getitem__ = getitem_hash
TUInt64H.__setitem__ = setitem_hash
TUInt64H.__delitem__ = delitem_hash
TUInt64H.__len__ = len_hash
TUInt64H.clear = clear_hash
TUInt64H.get = get_hash
TUInt64H.items = items_hash
TUInt64H.keys = keys_hash
TUInt64H.pop = pop_hash
TUInt64H.setdefault = setdefault_hash
TUInt64H.update = update_hash
TUInt64H.values = values_hash
TUInt64H.copy = copy_hash
TIntBoolH.__iter__ = iterhash
TIntBoolH.__getitem__ = getitem_hash
TIntBoolH.__setitem__ = setitem_hash
TIntBoolH.__delitem__ = delitem_hash
TIntBoolH.__len__ = len_hash
TIntBoolH.clear = clear_hash
TIntBoolH.get = get_hash
TIntBoolH.items = items_hash
TIntBoolH.keys = keys_hash
TIntBoolH.pop = pop_hash
TIntBoolH.setdefault = setdefault_hash
TIntBoolH.update = update_hash
TIntBoolH.values = values_hash
TIntBoolH.copy = copy_hash
TIntUInt64H.__iter__ = iterhash
TIntUInt64H.__getitem__ = getitem_hash
TIntUInt64H.__setitem__ = setitem_hash
TIntUInt64H.__delitem__ = delitem_hash
TIntUInt64H.__len__ = len_hash
TIntUInt64H.clear = clear_hash
TIntUInt64H.get = get_hash
TIntUInt64H.items = items_hash
TIntUInt64H.keys = keys_hash
TIntUInt64H.pop = pop_hash
TIntUInt64H.setdefault = setdefault_hash
TIntUInt64H.update = update_hash
TIntUInt64H.values = values_hash
TIntUInt64H.copy = copy_hash
TIntIntVH.__iter__ = iterhash
TIntIntVH.__getitem__ = getitem_hash
TIntIntVH.__setitem__ = setitem_hash
TIntIntVH.__delitem__ = delitem_hash
TIntIntVH.__len__ = len_hash
TIntIntVH.clear = clear_hash
TIntIntVH.get = get_hash
TIntIntVH.items = items_hash
TIntIntVH.keys = keys_hash
TIntIntVH.pop = pop_hash
TIntIntVH.setdefault = setdefault_hash
TIntIntVH.update = update_hash
TIntIntVH.values = values_hash
TIntIntVH.copy = copy_hash
TIntIntHH.__iter__ = iterhash
TIntIntHH.__getitem__ = getitem_hash
TIntIntHH.__setitem__ = setitem_hash
TIntIntHH.__delitem__ = delitem_hash
TIntIntHH.__len__ = len_hash
TIntIntHH.clear = clear_hash
TIntIntHH.get = get_hash
TIntIntHH.items = items_hash
TIntIntHH.keys = keys_hash
TIntIntHH.pop = pop_hash
TIntIntHH.setdefault = setdefault_hash
TIntIntHH.update = update_hash
TIntIntHH.values = values_hash
TIntIntHH.copy = copy_hash
TIntFltPrH.__iter__ = iterhash
TIntFltPrH.__getitem__ = getitem_hash
TIntFltPrH.__setitem__ = setitem_hash
TIntFltPrH.__delitem__ = delitem_hash
TIntFltPrH.__len__ = len_hash
TIntFltPrH.clear = clear_hash
TIntFltPrH.get = get_hash
TIntFltPrH.items = items_hash
TIntFltPrH.keys = keys_hash
TIntFltPrH.pop = pop_hash
TIntFltPrH.setdefault = setdefault_hash
TIntFltPrH.update = update_hash
TIntFltPrH.values = values_hash
TIntFltPrH.copy = copy_hash
TIntFltTrH.__iter__ = iterhash
TIntFltTrH.__getitem__ = getitem_hash
TIntFltTrH.__setitem__ = setitem_hash
TIntFltTrH.__delitem__ = delitem_hash
TIntFltTrH.__len__ = len_hash
TIntFltTrH.clear = clear_hash
TIntFltTrH.get = get_hash
TIntFltTrH.items = items_hash
TIntFltTrH.keys = keys_hash
TIntFltTrH.pop = pop_hash
TIntFltTrH.setdefault = setdefault_hash
TIntFltTrH.update = update_hash
TIntFltTrH.values = values_hash
TIntFltTrH.copy = copy_hash
TIntFltVH.__iter__ = iterhash
TIntFltVH.__getitem__ = getitem_hash
TIntFltVH.__setitem__ = setitem_hash
TIntFltVH.__delitem__ = delitem_hash
TIntFltVH.__len__ = len_hash
TIntFltVH.clear = clear_hash
TIntFltVH.get = get_hash
TIntFltVH.items = items_hash
TIntFltVH.keys = keys_hash
TIntFltVH.pop = pop_hash
TIntFltVH.setdefault = setdefault_hash
TIntFltVH.update = update_hash
TIntFltVH.values = values_hash
TIntFltVH.copy = copy_hash
TIntStrVH.__iter__ = iterhash
TIntStrVH.__getitem__ = getitem_hash
TIntStrVH.__setitem__ = setitem_hash
TIntStrVH.__delitem__ = delitem_hash
TIntStrVH.__len__ = len_hash
TIntStrVH.clear = clear_hash
TIntStrVH.get = get_hash
TIntStrVH.items = items_hash
TIntStrVH.keys = keys_hash
TIntStrVH.pop = pop_hash
TIntStrVH.setdefault = setdefault_hash
TIntStrVH.update = update_hash
TIntStrVH.values = values_hash
TIntStrVH.copy = copy_hash
TIntIntPrH.__iter__ = iterhash
TIntIntPrH.__getitem__ = getitem_hash
TIntIntPrH.__setitem__ = setitem_hash
TIntIntPrH.__delitem__ = delitem_hash
TIntIntPrH.__len__ = len_hash
TIntIntPrH.clear = clear_hash
TIntIntPrH.get = get_hash
TIntIntPrH.items = items_hash
TIntIntPrH.keys = keys_hash
TIntIntPrH.pop = pop_hash
TIntIntPrH.setdefault = setdefault_hash
TIntIntPrH.update = update_hash
TIntIntPrH.values = values_hash
TIntIntPrH.copy = copy_hash
TIntIntPrVH.__iter__ = iterhash
TIntIntPrVH.__getitem__ = getitem_hash
TIntIntPrVH.__setitem__ = setitem_hash
TIntIntPrVH.__delitem__ = delitem_hash
TIntIntPrVH.__len__ = len_hash
TIntIntPrVH.clear = clear_hash
TIntIntPrVH.get = get_hash
TIntIntPrVH.items = items_hash
TIntIntPrVH.keys = keys_hash
TIntIntPrVH.pop = pop_hash
TIntIntPrVH.setdefault = setdefault_hash
TIntIntPrVH.update = update_hash
TIntIntPrVH.values = values_hash
TIntIntPrVH.copy = copy_hash
TUInt64StrVH.__iter__ = iterhash
TUInt64StrVH.__getitem__ = getitem_hash
TUInt64StrVH.__setitem__ = setitem_hash
TUInt64StrVH.__delitem__ = delitem_hash
TUInt64StrVH.__len__ = len_hash
TUInt64StrVH.clear = clear_hash
TUInt64StrVH.get = get_hash
TUInt64StrVH.items = items_hash
TUInt64StrVH.keys = keys_hash
TUInt64StrVH.pop = pop_hash
TUInt64StrVH.setdefault = setdefault_hash
TUInt64StrVH.update = update_hash
TUInt64StrVH.values = values_hash
TUInt64StrVH.copy = copy_hash
TIntPrIntH.__iter__ = iterhash
TIntPrIntH.__getitem__ = getitem_hash
TIntPrIntH.__setitem__ = setitem_hash
TIntPrIntH.__delitem__ = delitem_hash
TIntPrIntH.__len__ = len_hash
TIntPrIntH.clear = clear_hash
TIntPrIntH.get = get_hash
TIntPrIntH.items = items_hash
TIntPrIntH.keys = keys_hash
TIntPrIntH.pop = pop_hash
TIntPrIntH.setdefault = setdefault_hash
TIntPrIntH.update = update_hash
TIntPrIntH.values = values_hash
TIntPrIntH.copy = copy_hash
TIntPrIntVH.__iter__ = iterhash
TIntPrIntVH.__getitem__ = getitem_hash
TIntPrIntVH.__setitem__ = setitem_hash
TIntPrIntVH.__delitem__ = delitem_hash
TIntPrIntVH.__len__ = len_hash
TIntPrIntVH.clear = clear_hash
TIntPrIntVH.get = get_hash
TIntPrIntVH.items = items_hash
TIntPrIntVH.keys = keys_hash
TIntPrIntVH.pop = pop_hash
TIntPrIntVH.setdefault = setdefault_hash
TIntPrIntVH.update = update_hash
TIntPrIntVH.values = values_hash
TIntPrIntVH.copy = copy_hash
TIntPrIntPrVH.__iter__ = iterhash
TIntPrIntPrVH.__getitem__ = getitem_hash
TIntPrIntPrVH.__setitem__ = setitem_hash
TIntPrIntPrVH.__delitem__ = delitem_hash
TIntPrIntPrVH.__len__ = len_hash
TIntPrIntPrVH.clear = clear_hash
TIntPrIntPrVH.get = get_hash
TIntPrIntPrVH.items = items_hash
TIntPrIntPrVH.keys = keys_hash
TIntPrIntPrVH.pop = pop_hash
TIntPrIntPrVH.setdefault = setdefault_hash
TIntPrIntPrVH.update = update_hash
TIntPrIntPrVH.values = values_hash
TIntPrIntPrVH.copy = copy_hash
TIntTrIntH.__iter__ = iterhash
TIntTrIntH.__getitem__ = getitem_hash
TIntTrIntH.__setitem__ = setitem_hash
TIntTrIntH.__delitem__ = delitem_hash
TIntTrIntH.__len__ = len_hash
TIntTrIntH.clear = clear_hash
TIntTrIntH.get = get_hash
TIntTrIntH.items = items_hash
TIntTrIntH.keys = keys_hash
TIntTrIntH.pop = pop_hash
TIntTrIntH.setdefault = setdefault_hash
TIntTrIntH.update = update_hash
TIntTrIntH.values = values_hash
TIntTrIntH.copy = copy_hash
TIntVIntH.__iter__ = iterhash
TIntVIntH.__getitem__ = getitem_hash
TIntVIntH.__setitem__ = setitem_hash
TIntVIntH.__delitem__ = delitem_hash
TIntVIntH.__len__ = len_hash
TIntVIntH.clear = clear_hash
TIntVIntH.get = get_hash
TIntVIntH.items = items_hash
TIntVIntH.keys = keys_hash
TIntVIntH.pop = pop_hash
TIntVIntH.setdefault = setdefault_hash
TIntVIntH.update = update_hash
TIntVIntH.values = values_hash
TIntVIntH.copy = copy_hash
TUIntH.__iter__ = iterhash
TUIntH.__getitem__ = getitem_hash
TUIntH.__setitem__ = setitem_hash
TUIntH.__delitem__ = delitem_hash
TUIntH.__len__ = len_hash
TUIntH.clear = clear_hash
TUIntH.get = get_hash
TUIntH.items = items_hash
TUIntH.keys = keys_hash
TUIntH.pop = pop_hash
TUIntH.setdefault = setdefault_hash
TUIntH.update = update_hash
TUIntH.values = values_hash
TUIntH.copy = copy_hash
TIntTrFltH.__iter__ = iterhash
TIntTrFltH.__getitem__ = getitem_hash
TIntTrFltH.__setitem__ = setitem_hash
TIntTrFltH.__delitem__ = delitem_hash
TIntTrFltH.__len__ = len_hash
TIntTrFltH.clear = clear_hash
TIntTrFltH.get = get_hash
TIntTrFltH.items = items_hash
TIntTrFltH.keys = keys_hash
TIntTrFltH.pop = pop_hash
TIntTrFltH.setdefault = setdefault_hash
TIntTrFltH.update = update_hash
TIntTrFltH.values = values_hash
TIntTrFltH.copy = copy_hash
TIntPrStrH.__iter__ = iterhash
TIntPrStrH.__getitem__ = getitem_hash
TIntPrStrH.__setitem__ = setitem_hash
TIntPrStrH.__delitem__ = delitem_hash
TIntPrStrH.__len__ = len_hash
TIntPrStrH.clear = clear_hash
TIntPrStrH.get = get_hash
TIntPrStrH.items = items_hash
TIntPrStrH.keys = keys_hash
TIntPrStrH.pop = pop_hash
TIntPrStrH.setdefault = setdefault_hash
TIntPrStrH.update = update_hash
TIntPrStrH.values = values_hash
TIntPrStrH.copy = copy_hash
TIntPrStrVH.__iter__ = iterhash
TIntPrStrVH.__getitem__ = getitem_hash
TIntPrStrVH.__setitem__ = setitem_hash
TIntPrStrVH.__delitem__ = delitem_hash
TIntPrStrVH.__len__ = len_hash
TIntPrStrVH.clear = clear_hash
TIntPrStrVH.get = get_hash
TIntPrStrVH.items = items_hash
TIntPrStrVH.keys = keys_hash
TIntPrStrVH.pop = pop_hash
TIntPrStrVH.setdefault = setdefault_hash
TIntPrStrVH.update = update_hash
TIntPrStrVH.values = values_hash
TIntPrStrVH.copy = copy_hash
TIntStrPrIntH.__iter__ = iterhash
TIntStrPrIntH.__getitem__ = getitem_hash
TIntStrPrIntH.__setitem__ = setitem_hash
TIntStrPrIntH.__delitem__ = delitem_hash
TIntStrPrIntH.__len__ = len_hash
TIntStrPrIntH.clear = clear_hash
TIntStrPrIntH.get = get_hash
TIntStrPrIntH.items = items_hash
TIntStrPrIntH.keys = keys_hash
TIntStrPrIntH.pop = pop_hash
TIntStrPrIntH.setdefault = setdefault_hash
TIntStrPrIntH.update = update_hash
TIntStrPrIntH.values = values_hash
TIntStrPrIntH.copy = copy_hash
TFltFltH.__iter__ = iterhash
TFltFltH.__getitem__ = getitem_hash
TFltFltH.__setitem__ = setitem_hash
TFltFltH.__delitem__ = delitem_hash
TFltFltH.__len__ = len_hash
TFltFltH.clear = clear_hash
TFltFltH.get = get_hash
TFltFltH.items = items_hash
TFltFltH.keys = keys_hash
TFltFltH.pop = pop_hash
TFltFltH.setdefault = setdefault_hash
TFltFltH.update = update_hash
TFltFltH.values = values_hash
TFltFltH.copy = copy_hash
TStrH.__iter__ = iterhash
TStrH.__getitem__ = getitem_hash
TStrH.__setitem__ = setitem_hash
TStrH.__delitem__ = delitem_hash
TStrH.__len__ = len_hash
TStrH.clear = clear_hash
TStrH.get = get_hash
TStrH.items = items_hash
TStrH.keys = keys_hash
TStrH.pop = pop_hash
TStrH.setdefault = setdefault_hash
TStrH.update = update_hash
TStrH.values = values_hash
TStrH.copy = copy_hash
TStrBoolH.__iter__ = iterhash
TStrBoolH.__getitem__ = getitem_hash
TStrBoolH.__setitem__ = setitem_hash
TStrBoolH.__delitem__ = delitem_hash
TStrBoolH.__len__ = len_hash
TStrBoolH.clear = clear_hash
TStrBoolH.get = get_hash
TStrBoolH.items = items_hash
TStrBoolH.keys = keys_hash
TStrBoolH.pop = pop_hash
TStrBoolH.setdefault = setdefault_hash
TStrBoolH.update = update_hash
TStrBoolH.values = values_hash
TStrBoolH.copy = copy_hash
TStrIntPrH.__iter__ = iterhash
TStrIntPrH.__getitem__ = getitem_hash
TStrIntPrH.__setitem__ = setitem_hash
TStrIntPrH.__delitem__ = delitem_hash
TStrIntPrH.__len__ = len_hash
TStrIntPrH.clear = clear_hash
TStrIntPrH.get = get_hash
TStrIntPrH.items = items_hash
TStrIntPrH.keys = keys_hash
TStrIntPrH.pop = pop_hash
TStrIntPrH.setdefault = setdefault_hash
TStrIntPrH.update = update_hash
TStrIntPrH.values = values_hash
TStrIntPrH.copy = copy_hash
TStrIntVH.__iter__ = iterhash
TStrIntVH.__getitem__ = getitem_hash
TStrIntVH.__setitem__ = setitem_hash
TStrIntVH.__delitem__ = delitem_hash
TStrIntVH.__len__ = len_hash
TStrIntVH.clear = clear_hash
TStrIntVH.get = get_hash
TStrIntVH.items = items_hash
TStrIntVH.keys = keys_hash
TStrIntVH.pop = pop_hash
TStrIntVH.setdefault = setdefault_hash
TStrIntVH.update = update_hash
TStrIntVH.values = values_hash
TStrIntVH.copy = copy_hash
TStrUInt64H.__iter__ = iterhash
TStrUInt64H.__getitem__ = getitem_hash
TStrUInt64H.__setitem__ = setitem_hash
TStrUInt64H.__delitem__ = delitem_hash
TStrUInt64H.__len__ = len_hash
TStrUInt64H.clear = clear_hash
TStrUInt64H.get = get_hash
TStrUInt64H.items = items_hash
TStrUInt64H.keys = keys_hash
TStrUInt64H.pop = pop_hash
TStrUInt64H.setdefault = setdefault_hash
TStrUInt64H.update = update_hash
TStrUInt64H.values = values_hash
TStrUInt64H.copy = copy_hash
TStrUInt64VH.__iter__ = iterhash
TStrUInt64VH.__getitem__ = getitem_hash
TStrUInt64VH.__setitem__ = setitem_hash
TStrUInt64VH.__delitem__ = delitem_hash
TStrUInt64VH.__len__ = len_hash
TStrUInt64VH.clear = clear_hash
TStrUInt64VH.get = get_hash
TStrUInt64VH.items = items_hash
TStrUInt64VH.keys = keys_hash
TStrUInt64VH.pop = pop_hash
TStrUInt64VH.setdefault = setdefault_hash
TStrUInt64VH.update = update_hash
TStrUInt64VH.values = values_hash
TStrUInt64VH.copy = copy_hash
TStrIntPrVH.__iter__ = iterhash
TStrIntPrVH.__getitem__ = getitem_hash
TStrIntPrVH.__setitem__ = setitem_hash
TStrIntPrVH.__delitem__ = delitem_hash
TStrIntPrVH.__len__ = len_hash
TStrIntPrVH.clear = clear_hash
TStrIntPrVH.get = get_hash
TStrIntPrVH.items = items_hash
TStrIntPrVH.keys = keys_hash
TStrIntPrVH.pop = pop_hash
TStrIntPrVH.setdefault = setdefault_hash
TStrIntPrVH.update = update_hash
TStrIntPrVH.values = values_hash
TStrIntPrVH.copy = copy_hash
TStrFltH.__iter__ = iterhash
TStrFltH.__getitem__ = getitem_hash
TStrFltH.__setitem__ = setitem_hash
TStrFltH.__delitem__ = delitem_hash
TStrFltH.__len__ = len_hash
TStrFltH.clear = clear_hash
TStrFltH.get = get_hash
TStrFltH.items = items_hash
TStrFltH.keys = keys_hash
TStrFltH.pop = pop_hash
TStrFltH.setdefault = setdefault_hash
TStrFltH.update = update_hash
TStrFltH.values = values_hash
TStrFltH.copy = copy_hash
TStrFltVH.__iter__ = iterhash
TStrFltVH.__getitem__ = getitem_hash
TStrFltVH.__setitem__ = setitem_hash
TStrFltVH.__delitem__ = delitem_hash
TStrFltVH.__len__ = len_hash
TStrFltVH.clear = clear_hash
TStrFltVH.get = get_hash
TStrFltVH.items = items_hash
TStrFltVH.keys = keys_hash
TStrFltVH.pop = pop_hash
TStrFltVH.setdefault = setdefault_hash
TStrFltVH.update = update_hash
TStrFltVH.values = values_hash
TStrFltVH.copy = copy_hash
TStrStrH.__iter__ = iterhash
TStrStrH.__getitem__ = getitem_hash
TStrStrH.__setitem__ = setitem_hash
TStrStrH.__delitem__ = delitem_hash
TStrStrH.__len__ = len_hash
TStrStrH.clear = clear_hash
TStrStrH.get = get_hash
TStrStrH.items = items_hash
TStrStrH.keys = keys_hash
TStrStrH.pop = pop_hash
TStrStrH.setdefault = setdefault_hash
TStrStrH.update = update_hash
TStrStrH.values = values_hash
TStrStrH.copy = copy_hash
TStrStrPrH.__iter__ = iterhash
TStrStrPrH.__getitem__ = getitem_hash
TStrStrPrH.__setitem__ = setitem_hash
TStrStrPrH.__delitem__ = delitem_hash
TStrStrPrH.__len__ = len_hash
TStrStrPrH.clear = clear_hash
TStrStrPrH.get = get_hash
TStrStrPrH.items = items_hash
TStrStrPrH.keys = keys_hash
TStrStrPrH.pop = pop_hash
TStrStrPrH.setdefault = setdefault_hash
TStrStrPrH.update = update_hash
TStrStrPrH.values = values_hash
TStrStrPrH.copy = copy_hash
TStrStrVH.__iter__ = iterhash
TStrStrVH.__getitem__ = getitem_hash
TStrStrVH.__setitem__ = setitem_hash
TStrStrVH.__delitem__ = delitem_hash
TStrStrVH.__len__ = len_hash
TStrStrVH.clear = clear_hash
TStrStrVH.get = get_hash
TStrStrVH.items = items_hash
TStrStrVH.keys = keys_hash
TStrStrVH.pop = pop_hash
TStrStrVH.setdefault = setdefault_hash
TStrStrVH.update = update_hash
TStrStrVH.values = values_hash
TStrStrVH.copy = copy_hash
TStrStrPrVH.__iter__ = iterhash
TStrStrPrVH.__getitem__ = getitem_hash
TStrStrPrVH.__setitem__ = setitem_hash
TStrStrPrVH.__delitem__ = delitem_hash
TStrStrPrVH.__len__ = len_hash
TStrStrPrVH.clear = clear_hash
TStrStrPrVH.get = get_hash
TStrStrPrVH.items = items_hash
TStrStrPrVH.keys = keys_hash
TStrStrPrVH.pop = pop_hash
TStrStrPrVH.setdefault = setdefault_hash
TStrStrPrVH.update = update_hash
TStrStrPrVH.values = values_hash
TStrStrPrVH.copy = copy_hash
TStrStrKdVH.__iter__ = iterhash
TStrStrKdVH.__getitem__ = getitem_hash
TStrStrKdVH.__setitem__ = setitem_hash
TStrStrKdVH.__delitem__ = delitem_hash
TStrStrKdVH.__len__ = len_hash
TStrStrKdVH.clear = clear_hash
TStrStrKdVH.get = get_hash
TStrStrKdVH.items = items_hash
TStrStrKdVH.keys = keys_hash
TStrStrKdVH.pop = pop_hash
TStrStrKdVH.setdefault = setdefault_hash
TStrStrKdVH.update = update_hash
TStrStrKdVH.values = values_hash
TStrStrKdVH.copy = copy_hash
TStrIntFltPrH.__iter__ = iterhash
TStrIntFltPrH.__getitem__ = getitem_hash
TStrIntFltPrH.__setitem__ = setitem_hash
TStrIntFltPrH.__delitem__ = delitem_hash
TStrIntFltPrH.__len__ = len_hash
TStrIntFltPrH.clear = clear_hash
TStrIntFltPrH.get = get_hash
TStrIntFltPrH.items = items_hash
TStrIntFltPrH.keys = keys_hash
TStrIntFltPrH.pop = pop_hash
TStrIntFltPrH.setdefault = setdefault_hash
TStrIntFltPrH.update = update_hash
TStrIntFltPrH.values = values_hash
TStrIntFltPrH.copy = copy_hash
TStrStrIntPrVH.__iter__ = iterhash
TStrStrIntPrVH.__getitem__ = getitem_hash
TStrStrIntPrVH.__setitem__ = setitem_hash
TStrStrIntPrVH.__delitem__ = delitem_hash
TStrStrIntPrVH.__len__ = len_hash
TStrStrIntPrVH.clear = clear_hash
TStrStrIntPrVH.get = get_hash
TStrStrIntPrVH.items = items_hash
TStrStrIntPrVH.keys = keys_hash
TStrStrIntPrVH.pop = pop_hash
TStrStrIntPrVH.setdefault = setdefault_hash
TStrStrIntPrVH.update = update_hash
TStrStrIntPrVH.values = values_hash
TStrStrIntPrVH.copy = copy_hash
TStrStrIntKdVH.__iter__ = iterhash
TStrStrIntKdVH.__getitem__ = getitem_hash
TStrStrIntKdVH.__setitem__ = setitem_hash
TStrStrIntKdVH.__delitem__ = delitem_hash
TStrStrIntKdVH.__len__ = len_hash
TStrStrIntKdVH.clear = clear_hash
TStrStrIntKdVH.get = get_hash
TStrStrIntKdVH.items = items_hash
TStrStrIntKdVH.keys = keys_hash
TStrStrIntKdVH.pop = pop_hash
TStrStrIntKdVH.setdefault = setdefault_hash
TStrStrIntKdVH.update = update_hash
TStrStrIntKdVH.values = values_hash
TStrStrIntKdVH.copy = copy_hash
TStrPrBoolH.__iter__ = iterhash
TStrPrBoolH.__getitem__ = getitem_hash
TStrPrBoolH.__setitem__ = setitem_hash
TStrPrBoolH.__delitem__ = delitem_hash
TStrPrBoolH.__len__ = len_hash
TStrPrBoolH.clear = clear_hash
TStrPrBoolH.get = get_hash
TStrPrBoolH.items = items_hash
TStrPrBoolH.keys = keys_hash
TStrPrBoolH.pop = pop_hash
TStrPrBoolH.setdefault = setdefault_hash
TStrPrBoolH.update = update_hash
TStrPrBoolH.values = values_hash
TStrPrBoolH.copy = copy_hash
TStrPrIntH.__iter__ = iterhash
TStrPrIntH.__getitem__ = getitem_hash
TStrPrIntH.__setitem__ = setitem_hash
TStrPrIntH.__delitem__ = delitem_hash
TStrPrIntH.__len__ = len_hash
TStrPrIntH.clear = clear_hash
TStrPrIntH.get = get_hash
TStrPrIntH.items = items_hash
TStrPrIntH.keys = keys_hash
TStrPrIntH.pop = pop_hash
TStrPrIntH.setdefault = setdefault_hash
TStrPrIntH.update = update_hash
TStrPrIntH.values = values_hash
TStrPrIntH.copy = copy_hash
TStrPrFltH.__iter__ = iterhash
TStrPrFltH.__getitem__ = getitem_hash
TStrPrFltH.__setitem__ = setitem_hash
TStrPrFltH.__delitem__ = delitem_hash
TStrPrFltH.__len__ = len_hash
TStrPrFltH.clear = clear_hash
TStrPrFltH.get = get_hash
TStrPrFltH.items = items_hash
TStrPrFltH.keys = keys_hash
TStrPrFltH.pop = pop_hash
TStrPrFltH.setdefault = setdefault_hash
TStrPrFltH.update = update_hash
TStrPrFltH.values = values_hash
TStrPrFltH.copy = copy_hash
TStrPrStrH.__iter__ = iterhash
TStrPrStrH.__getitem__ = getitem_hash
TStrPrStrH.__setitem__ = setitem_hash
TStrPrStrH.__delitem__ = delitem_hash
TStrPrStrH.__len__ = len_hash
TStrPrStrH.clear = clear_hash
TStrPrStrH.get = get_hash
TStrPrStrH.items = items_hash
TStrPrStrH.keys = keys_hash
TStrPrStrH.pop = pop_hash
TStrPrStrH.setdefault = setdefault_hash
TStrPrStrH.update = update_hash
TStrPrStrH.values = values_hash
TStrPrStrH.copy = copy_hash
TStrPrStrVH.__iter__ = iterhash
TStrPrStrVH.__getitem__ = getitem_hash
TStrPrStrVH.__setitem__ = setitem_hash
TStrPrStrVH.__delitem__ = delitem_hash
TStrPrStrVH.__len__ = len_hash
TStrPrStrVH.clear = clear_hash
TStrPrStrVH.get = get_hash
TStrPrStrVH.items = items_hash
TStrPrStrVH.keys = keys_hash
TStrPrStrVH.pop = pop_hash
TStrPrStrVH.setdefault = setdefault_hash
TStrPrStrVH.update = update_hash
TStrPrStrVH.values = values_hash
TStrPrStrVH.copy = copy_hash
TStrTrIntH.__iter__ = iterhash
TStrTrIntH.__getitem__ = getitem_hash
TStrTrIntH.__setitem__ = setitem_hash
TStrTrIntH.__delitem__ = delitem_hash
TStrTrIntH.__len__ = len_hash
TStrTrIntH.clear = clear_hash
TStrTrIntH.get = get_hash
TStrTrIntH.items = items_hash
TStrTrIntH.keys = keys_hash
TStrTrIntH.pop = pop_hash
TStrTrIntH.setdefault = setdefault_hash
TStrTrIntH.update = update_hash
TStrTrIntH.values = values_hash
TStrTrIntH.copy = copy_hash
TStrIntPrIntH.__iter__ = iterhash
TStrIntPrIntH.__getitem__ = getitem_hash
TStrIntPrIntH.__setitem__ = setitem_hash
TStrIntPrIntH.__delitem__ = delitem_hash
TStrIntPrIntH.__len__ = len_hash
TStrIntPrIntH.clear = clear_hash
TStrIntPrIntH.get = get_hash
TStrIntPrIntH.items = items_hash
TStrIntPrIntH.keys = keys_hash
TStrIntPrIntH.pop = pop_hash
TStrIntPrIntH.setdefault = setdefault_hash
TStrIntPrIntH.update = update_hash
TStrIntPrIntH.values = values_hash
TStrIntPrIntH.copy = copy_hash
TStrVH.__iter__ = iterhash
TStrVH.__getitem__ = getitem_hash
TStrVH.__setitem__ = setitem_hash
TStrVH.__delitem__ = delitem_hash
TStrVH.__len__ = len_hash
TStrVH.clear = clear_hash
TStrVH.get = get_hash
TStrVH.items = items_hash
TStrVH.keys = keys_hash
TStrVH.pop = pop_hash
TStrVH.setdefault = setdefault_hash
TStrVH.update = update_hash
TStrVH.values = values_hash
TStrVH.copy = copy_hash
TStrVIntVH.__iter__ = iterhash
TStrVIntVH.__getitem__ = getitem_hash
TStrVIntVH.__setitem__ = setitem_hash
TStrVIntVH.__delitem__ = delitem_hash
TStrVIntVH.__len__ = len_hash
TStrVIntVH.clear = clear_hash
TStrVIntVH.get = get_hash
TStrVIntVH.items = items_hash
TStrVIntVH.keys = keys_hash
TStrVIntVH.pop = pop_hash
TStrVIntVH.setdefault = setdefault_hash
TStrVIntVH.update = update_hash
TStrVIntVH.values = values_hash
TStrVIntVH.copy = copy_hash
TStrVStrH.__iter__ = iterhash
TStrVStrH.__getitem__ = getitem_hash
TStrVStrH.__setitem__ = setitem_hash
TStrVStrH.__delitem__ = delitem_hash
TStrVStrH.__len__ = len_hash
TStrVStrH.clear = clear_hash
TStrVStrH.get = get_hash
TStrVStrH.items = items_hash
TStrVStrH.keys = keys_hash
TStrVStrH.pop = pop_hash
TStrVStrH.setdefault = setdefault_hash
TStrVStrH.update = update_hash
TStrVStrH.values = values_hash
TStrVStrH.copy = copy_hash
TStrVStrVH.__iter__ = iterhash
TStrVStrVH.__getitem__ = getitem_hash
TStrVStrVH.__setitem__ = setitem_hash
TStrVStrVH.__delitem__ = delitem_hash
TStrVStrVH.__len__ = len_hash
TStrVStrVH.clear = clear_hash
TStrVStrVH.get = get_hash
TStrVStrVH.items = items_hash
TStrVStrVH.keys = keys_hash
TStrVStrVH.pop = pop_hash
TStrVStrVH.setdefault = setdefault_hash
TStrVStrVH.update = update_hash
TStrVStrVH.values = values_hash
TStrVStrVH.copy = copy_hash
%}
#endif

