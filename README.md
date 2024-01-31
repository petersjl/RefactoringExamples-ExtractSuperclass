# Extract Superclass

### Overview
This is an example of a refactoring technique known as 'Extract Superclass' from the bool *Refactoring Improving the Design of ExistingCode* by Martin Fowler. The commit history of this repo is a step by step guide on how to apply the technique starting from the code in `Start/` and ending with `Result/`

### Steps
*The steps to executing this technique as listed in the book are as follows:*

- Create an empty superclass. Make the original classes its subclasses.
- Test.
- One by one, use *Pull Up Constructor Body*, *Pull Up Method*, and *Pull Up Field* to move common elements to superclass.
- Examine remaining methods on the subclasses. See if there are common parts. If so, use *Extract Function* followed by *Pull Up Method*.
- Check clients of the original classes. Consider adjusting them to use the superclass interface.

<sub>*note: the other techniques (indicated in italics above) are used but not directly covered in this example. See book for further details</sub> 