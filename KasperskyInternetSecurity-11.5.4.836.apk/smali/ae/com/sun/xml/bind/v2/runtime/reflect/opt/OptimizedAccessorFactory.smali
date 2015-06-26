.class public abstract Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedAccessorFactory;
.super Ljava/lang/Object;
.source "OptimizedAccessorFactory.java"


# static fields
.field private static final fieldTemplateName:Ljava/lang/String;

.field private static final logger:Ljava/util/logging/Logger;

.field private static final methodTemplateName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x2f

    const/16 v4, 0x2e

    const/4 v3, 0x0

    .line 62
    invoke-static {}, Lae/com/sun/xml/bind/Util;->getClassLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedAccessorFactory;->logger:Ljava/util/logging/Logger;

    .line 69
    const-class v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/FieldAccessor_Byte;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Byte"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedAccessorFactory;->fieldTemplateName:Ljava/lang/String;

    .line 72
    const-class v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/MethodAccessor_Byte;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Byte"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedAccessorFactory;->methodTemplateName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final get(Ljava/lang/reflect/Field;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 13
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TB;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 158
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    .line 159
    .local v1, "mods":I
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    :cond_0
    const/4 v0, 0x0

    .line 194
    :cond_1
    :goto_0
    return-object v0

    .line 163
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$JaxbAccessorF_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "newClassName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 168
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedAccessorFactory;->fieldTemplateName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v4, Lae/com/sun/xml/bind/v2/runtime/RuntimeUtil;->primitiveToBox:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v12, [Ljava/lang/String;

    const-class v7, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;

    invoke-static {v7}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "f_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v5, v4, v2, v6}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/AccessorInjector;->prepare(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 188
    .local v3, "opt":Ljava/lang/Class;
    :goto_1
    if-nez v3, :cond_4

    .line 189
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 176
    .end local v3    # "opt":Ljava/lang/Class;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedAccessorFactory;->fieldTemplateName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Ref"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/String;

    const-class v7, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;

    invoke-static {v7}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-class v7, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Ref;

    invoke-static {v7}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    const-class v7, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Ref;

    invoke-static {v7}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v12

    const/4 v7, 0x5

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "f_ref"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v2, v6}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/AccessorInjector;->prepare(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .restart local v3    # "opt":Ljava/lang/Class;
    goto :goto_1

    .line 191
    :cond_4
    invoke-static {v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedAccessorFactory;->instanciate(Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    .line 192
    .local v0, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TB;TV;>;"
    if-eqz v0, :cond_1

    .line 193
    sget-object v4, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedAccessorFactory;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using optimized Accessor for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static final get(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 14
    .param p0, "getter"    # Ljava/lang/reflect/Method;
    .param p1, "setter"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TB;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/16 v9, 0x5f

    const/4 v11, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-eqz v7, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 87
    .local v4, "sparams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v7, v4

    if-ne v7, v12, :cond_0

    .line 89
    aget-object v7, v4, v11

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    if-ne v7, v8, :cond_0

    .line 91
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_0

    .line 93
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    if-ne v7, v8, :cond_0

    .line 95
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 99
    aget-object v5, v4, v11

    .line 100
    .local v5, "t":Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "typeName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 102
    const-string v6, "AOf_"

    .line 103
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "compName":Ljava/lang/String;
    :goto_1
    const-string v7, "[L"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 105
    invoke-virtual {v1, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AOf_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 108
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 111
    .end local v1    # "compName":Ljava/lang/String;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "$JaxbAccessorM_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "newClassName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 115
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedAccessorFactory;->methodTemplateName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v7, Lae/com/sun/xml/bind/v2/runtime/RuntimeUtil;->primitiveToBox:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/String;

    const-class v10, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;

    invoke-static {v10}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    const/4 v10, 0x3

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v7, v2, v9}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/AccessorInjector;->prepare(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 141
    .local v3, "opt":Ljava/lang/Class;
    :goto_2
    if-eqz v3, :cond_0

    .line 144
    invoke-static {v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedAccessorFactory;->instanciate(Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    .line 145
    .local v0, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TB;TV;>;"
    if-eqz v0, :cond_0

    .line 146
    sget-object v7, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedAccessorFactory;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Using optimized Accessor for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    .end local v0    # "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TB;TV;>;"
    .end local v3    # "opt":Ljava/lang/Class;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedAccessorFactory;->methodTemplateName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Ref"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xc

    new-array v9, v9, [Ljava/lang/String;

    const-class v10, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;

    invoke-static {v10}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    const-class v10, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Ref;

    invoke-static {v10}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    const/4 v10, 0x3

    invoke-static {v5}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "()"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Ref;

    invoke-static {v12}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "()"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v5}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x28

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Ref;

    invoke-static {v12}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")V"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x28

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v5}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")V"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "get_ref"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "set_ref"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v2, v9}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/AccessorInjector;->prepare(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .restart local v3    # "opt":Ljava/lang/Class;
    goto/16 :goto_2
.end method

.method private static instanciate(Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 4
    .param p0, "opt"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            ")",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TB;TV;>;"
        }
    .end annotation

    .prologue
    .line 199
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 207
    :goto_0
    return-object v1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/InstantiationException;
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedAccessorFactory;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "failed to load an optimized Accessor"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 202
    :catch_1
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedAccessorFactory;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "failed to load an optimized Accessor"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 204
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedAccessorFactory;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "failed to load an optimized Accessor"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
