package symtable;
import java.util.*;
import ast.node.*;

import exceptions.InternalException;

public class ClassSTE extends STE{


    public ClassSTE(){

    }
    public ClassSTE(String name){
        this.name = name;
    }
}