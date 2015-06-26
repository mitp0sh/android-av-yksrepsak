.class public abstract Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedTransducedAccessorFactory;
.super Ljava/lang/Object;
.source "OptimizedTransducedAccessorFactory.java"


# static fields
.field private static final fieldTemplateName:Ljava/lang/String;

.field private static final logger:Ljava/util/logging/Logger;

.field private static final methodTemplateName:Ljava/lang/String;

.field private static final suffixMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x2f

    const/16 v4, 0x2e

    const/4 v3, 0x0

    .line 71
    invoke-static {}, Lae/com/sun/xml/bind/Util;->getClassLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedTransducedAccessorFactory;->logger:Ljava/util/logging/Logger;

    .line 77
    const-class v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/TransducedAccessor_field_Byte;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 78
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

    sput-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedTransducedAccessorFactory;->fieldTemplateName:Ljava/lang/String;

    .line 80
    const-class v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/TransducedAccessor_method_Byte;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 81
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

    sput-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedTransducedAccessorFactory;->methodTemplateName:Ljava/lang/String;

    .line 170
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedTransducedAccessorFactory;->suffixMap:Ljava/util/Map;

    .line 173
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedTransducedAccessorFactory;->suffixMap:Ljava/util/Map;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v3, "Byte"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedTransducedAccessorFactory;->suffixMap:Ljava/util/Map;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v3, "Short"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedTransducedAccessorFactory;->suffixMap:Ljava/util/Map;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "Integer"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedTransducedAccessorFactory;->suffixMap:Ljava/util/Map;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v3, "Long"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedTransducedAccessorFactory;->suffixMap:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "Boolean"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedTransducedAccessorFactory;->suffixMap:Ljava/util/Map;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v3, "Float"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedTransducedAccessorFactory;->suffixMap:Ljava/util/Map;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v3, "Double"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final get(Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;)Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;
    .locals 16
    .param p0, "prop"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    .prologue
    .line 91
    invoke-interface/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    .line 94
    .local v0, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    const/4 v7, 0x0

    .line 96
    .local v7, "opt":Ljava/lang/Class;
    invoke-interface/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->parent()Lae/com/sun/xml/bind/v2/model/core/TypeInfo;

    move-result-object v8

    .line 97
    .local v8, "parent":Lae/com/sun/xml/bind/v2/model/core/TypeInfo;, "Lae/com/sun/xml/bind/v2/model/core/TypeInfo<Ljava/lang/reflect/Type;Ljava/lang/Class;>;"
    instance-of v11, v8, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;

    if-nez v11, :cond_0

    .line 98
    const/4 v11, 0x0

    .line 167
    .end local v8    # "parent":Lae/com/sun/xml/bind/v2/model/core/TypeInfo;, "Lae/com/sun/xml/bind/v2/model/core/TypeInfo<Ljava/lang/reflect/Type;Ljava/lang/Class;>;"
    :goto_0
    return-object v11

    .line 100
    .restart local v8    # "parent":Lae/com/sun/xml/bind/v2/model/core/TypeInfo;, "Lae/com/sun/xml/bind/v2/model/core/TypeInfo<Ljava/lang/reflect/Type;Ljava/lang/Class;>;"
    :cond_0
    check-cast v8, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;

    .end local v8    # "parent":Lae/com/sun/xml/bind/v2/model/core/TypeInfo;, "Lae/com/sun/xml/bind/v2/model/core/TypeInfo<Ljava/lang/reflect/Type;Ljava/lang/Class;>;"
    invoke-interface {v8}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;->getClazz()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 101
    .local v1, "dc":Ljava/lang/Class;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_JaxbXducedAccessor_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, "newClassName":Ljava/lang/String;
    instance-of v11, v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;

    if-eqz v11, :cond_3

    move-object v9, v0

    .line 106
    check-cast v9, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;

    .line 107
    .local v9, "racc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;
    iget-object v3, v9, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;->f:Ljava/lang/reflect/Field;

    .line 109
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    .line 110
    .local v5, "mods":I
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 113
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    .line 116
    .local v10, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 117
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedTransducedAccessorFactory;->fieldTemplateName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v11, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedTransducedAccessorFactory;->suffixMap:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-class v14, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;

    invoke-static {v14}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v1}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "f_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v1, v11, v6, v12}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/AccessorInjector;->prepare(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 126
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "mods":I
    .end local v9    # "racc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;
    .end local v10    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;

    if-ne v11, v12, :cond_8

    move-object v4, v0

    .line 127
    check-cast v4, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;

    .line 129
    .local v4, "gacc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;
    iget-object v11, v4, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;->getter:Ljava/lang/reflect/Method;

    if-eqz v11, :cond_4

    iget-object v11, v4, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;->setter:Ljava/lang/reflect/Method;

    if-nez v11, :cond_5

    .line 130
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 132
    :cond_5
    iget-object v11, v4, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;->getter:Ljava/lang/reflect/Method;

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    .line 134
    .restart local v10    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v11, v4, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;->getter:Ljava/lang/reflect/Method;

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v11

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, v4, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;->setter:Ljava/lang/reflect/Method;

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v11

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 137
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 140
    :cond_7
    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 141
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedTransducedAccessorFactory;->methodTemplateName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v11, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedTransducedAccessorFactory;->suffixMap:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-class v14, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Bean;

    invoke-static {v14}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v1}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->toVMClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "get_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    iget-object v14, v4, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;->getter:Ljava/lang/reflect/Method;

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "set_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    iget-object v14, v4, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;->setter:Ljava/lang/reflect/Method;

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v1, v11, v6, v12}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/AccessorInjector;->prepare(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 152
    .end local v4    # "gacc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;
    .end local v10    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    if-nez v7, :cond_9

    .line 153
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 155
    :cond_9
    sget-object v11, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedTransducedAccessorFactory;->logger:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Using optimized TransducedAccessor for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->displayName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 159
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Ljava/lang/InstantiationException;
    sget-object v11, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedTransducedAccessorFactory;->logger:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v13, "failed to load an optimized TransducedAccessor"

    invoke-virtual {v11, v12, v13, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :goto_1
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 162
    :catch_1
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/IllegalAccessException;
    sget-object v11, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedTransducedAccessorFactory;->logger:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v13, "failed to load an optimized TransducedAccessor"

    invoke-virtual {v11, v12, v13, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 164
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 165
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v11, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedTransducedAccessorFactory;->logger:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v13, "failed to load an optimized TransducedAccessor"

    invoke-virtual {v11, v12, v13, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
