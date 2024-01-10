import String from 'peggy-string'

StringConcatenation
  = left: StringLiteral operator: '++' right: StringLiteral {
    return {
      type: 'BinaryOperation',
      operator,
      left,
      right,
    };
  }

StringLiteral
  = value: String { return {type: 'StringLiteral', value }; }
