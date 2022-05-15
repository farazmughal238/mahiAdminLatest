extension ScopeFunctionsForObject<Type extends Object> on Type {

  ReturnType let<ReturnType>(ReturnType Function(Type self) operation) {
    return operation(this);
  }
}