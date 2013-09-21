#include <iostream>
#include <string>
using namespace std;

// ---------------------------------------------------  class definition
class MyObject {
public:
    static int numObjs;
    MyObject(const char *n = "--default--");      // default constructor
    MyObject(const MyObject& rhs);                // copy constructor
    ~MyObject();                                  // destructor
    string getName() const {
        return name;
    }
    void setName(const string newName) {
        name = newName;
    }
    friend ostream& operator<<(ostream& output, const MyObject& obj);
private:
    string name;
    int id;
};

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

//---------------------------------------------------- static variables
int MyObject::numObjs = 0;  // static member for all objects in class
static MyObject staticObj("I'm static, outside of main");

//---------------------------------------------------------- prototypes
MyObject getMaxMyObj(const MyObject o1, const MyObject o2);
int cmpMyObj(const MyObject o1, const MyObject o2);
void swapMyObj(MyObject& o1, MyObject& o2);

//---------------------------------------------------------- cmpMyObj
int cmpMyObj(const MyObject o1, const MyObject o2)
{
    string name1 = o1.getName(), name2 = o2.getName();
    if ( name1 == name2 )
        return 0;
    else if ( name1 < name2 )
        return -1;
    else
        return 1;
}

//---------------------------------------------------------- getMaxMyObj
MyObject getMaxMyObj(const MyObject o1, const MyObject o2)
{
    string name1 = o1.getName(), name2 = o2.getName();
    if ( name1 >= name2 )
        return o1;
    else
        return o2;
}

//---------------------------------------------------------- swapMyObj
void swapMyObj(MyObject& o1, MyObject& o2)
{
    MyObject tmp(o1);
    o1.setName(o2.getName());
    o2.setName(tmp.getName());
}