  #include "LifeCycle.h"
// ------------------------------------------------  default constructor
    MyObject::MyObject(const char *n) : name(n)
   {
      id = ++numObjs;
      cout << "MyObject Default constructor: " << *this << endl;
   }

// ---------------------------------------------------  copy constructor
    MyObject::MyObject(const MyObject& rhs) : name(rhs.name)
   {
      id = ++numObjs;
      cout << "MyObject Copy constructor:    " << *this << endl;
   }

// --------------------------------------------------------  destructor
    MyObject::~MyObject()
   {
      cout << "MyObject Destructor:          " << *this << endl;
   }

// -----------------------------------------------------------  put to
    ostream& operator<<(ostream& output, const MyObject& obj)
   {
    // output in format:  ("object name",id)
      return output << "(\"" << obj.name << "\"," << obj.id << ")";
   }
