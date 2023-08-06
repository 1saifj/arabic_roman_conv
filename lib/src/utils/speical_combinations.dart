///Special combinations of Arabic letters that are Romanized differently
final Map<String, String> specialCombinations = {
  'خا':
      'khaa', // When 'خ' and 'ا' appear together, they are Romanized as 'khaa'
  'غي':
      'ghee', // When 'غ' and 'ي' appear together, they are Romanized as 'ghee'
  'شي':
      'shee', // When 'ش' and 'ي' appear together, they are Romanized as 'shee'
  'ثم':
      'thum', // When 'ث' and 'م' appear together, they are Romanized as 'thum'
  'عي': 'aie', // When 'ع' and 'ي' appear together, they are Romanized as 'aie'
  'صو': 'sou', // When 'ص' and 'و' appear together, they are Romanized as 'sou'
  'قي': 'qie', // When 'ق' and 'ي' appear together, they are Romanized as 'qie'
  'نو': 'nou', // When 'ن' and 'و' appear together, they are Romanized as 'nou'
  'مي': 'mie', // When 'م' and 'ي' appear together, they are Romanized as 'mie'
  'لي': 'lie', // When 'ل' and 'ي' appear together, they are Romanized as 'lie'
  // ... add more combinations
};

/// Changes that occur in the beginning of a word
final Map<String, String> beginningChanges = {
  'أ':
      'aa', // When 'أ' appears at the beginning of a word, it's Romanized as 'aa'
  'إ':
      'ee', // When 'إ' appears at the beginning of a word, it's Romanized as 'ee'
  // ... add more changes
};

/// Changes that occur in the middle of a word
final Map<String, String> middleChanges = {
  'أ': 'a', // When 'أ' appears in the middle of a word, it's Romanized as 'a'
  'إ': 'i', // When 'إ' appears in the middle of a word, it's Romanized as 'i'
  // ... add more changes
};

/// Changes that occur in the end of a word
final Map<String, String> endingChanges = {
  'ة': 't', // When 'ة' appears at the end of a word, it's Romanized as 't'
  'ى': 'a', // When 'ى' appears at the end of a word, it's Romanized as 'a'
  // ... add more changes
};
