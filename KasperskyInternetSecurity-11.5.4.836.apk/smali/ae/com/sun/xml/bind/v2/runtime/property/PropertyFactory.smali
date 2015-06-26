.class public abstract Lae/com/sun/xml/bind/v2/runtime/property/PropertyFactory;
.super Ljava/lang/Object;
.source "PropertyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/property/PropertyFactory$1;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final propImpls:[Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lae/com/sun/xml/bind/v2/runtime/property/Property;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 62
    const-class v2, Lae/com/sun/xml/bind/v2/runtime/property/PropertyFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    sput-boolean v2, Lae/com/sun/xml/bind/v2/runtime/property/PropertyFactory;->$assertionsDisabled:Z

    .line 72
    const/16 v2, 0xc

    new-array v1, v2, [Ljava/lang/Class;

    const-class v2, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;

    aput-object v2, v1, v4

    aput-object v5, v1, v3

    const/4 v2, 0x2

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-class v3, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementLeafProperty;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object v5, v1, v2

    const/4 v2, 0x5

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const-class v3, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementNodeProperty;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lae/com/sun/xml/bind/v2/runtime/property/SingleReferenceNodeProperty;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementNodeProperty;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Lae/com/sun/xml/bind/v2/runtime/property/ArrayReferenceNodeProperty;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    aput-object v5, v1, v2

    .line 90
    .local v1, "implClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lae/com/sun/xml/bind/v2/runtime/property/Property;>;"
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/reflect/Constructor;

    sput-object v2, Lae/com/sun/xml/bind/v2/runtime/property/PropertyFactory;->propImpls:[Ljava/lang/reflect/Constructor;

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/property/PropertyFactory;->propImpls:[Ljava/lang/reflect/Constructor;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 92
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 94
    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/property/PropertyFactory;->propImpls:[Ljava/lang/reflect/Constructor;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 91
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "implClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lae/com/sun/xml/bind/v2/runtime/property/Property;>;"
    :cond_1
    move v2, v4

    .line 62
    goto :goto_0

    .line 96
    .restart local v0    # "i":I
    .restart local v1    # "implClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lae/com/sun/xml/bind/v2/runtime/property/Property;>;"
    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;)Lae/com/sun/xml/bind/v2/runtime/property/Property;
    .locals 10
    .param p0, "grammar"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p1, "info"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    .prologue
    const/4 v7, 0x0

    .line 104
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->kind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    move-result-object v4

    .line 106
    .local v4, "kind":Lae/com/sun/xml/bind/v2/model/core/PropertyKind;
    sget-object v6, Lae/com/sun/xml/bind/v2/runtime/property/PropertyFactory$1;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$PropertyKind:[I

    invoke-virtual {v4}, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_0

    .line 119
    sget-boolean v6, Lae/com/sun/xml/bind/v2/runtime/property/PropertyFactory;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 108
    :pswitch_0
    new-instance v6, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;

    check-cast p1, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeAttributePropertyInfo;

    .end local p1    # "info":Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
    invoke-direct {v6, p0, p1}, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeAttributePropertyInfo;)V

    .line 128
    :goto_0
    return-object v6

    .line 110
    .restart local p1    # "info":Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
    :pswitch_1
    new-instance v6, Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;

    check-cast p1, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeValuePropertyInfo;

    .end local p1    # "info":Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
    invoke-direct {v6, p0, p1}, Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeValuePropertyInfo;)V

    goto :goto_0

    .restart local p1    # "info":Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
    :pswitch_2
    move-object v6, p1

    .line 112
    check-cast v6, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;

    invoke-interface {v6}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;->isValueList()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 113
    new-instance v6, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;

    check-cast p1, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;

    .end local p1    # "info":Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
    invoke-direct {v6, p0, p1}, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;)V

    goto :goto_0

    .line 123
    .restart local p1    # "info":Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
    :cond_0
    :pswitch_3
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->isCollection()Z

    move-result v2

    .line 124
    .local v2, "isCollection":Z
    invoke-static {p1}, Lae/com/sun/xml/bind/v2/runtime/property/PropertyFactory;->isLeaf(Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;)Z

    move-result v3

    .line 126
    .local v3, "isLeaf":Z
    sget-object v9, Lae/com/sun/xml/bind/v2/runtime/property/PropertyFactory;->propImpls:[Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_1

    move v8, v7

    :goto_1
    if-eqz v2, :cond_2

    const/4 v6, 0x3

    :goto_2
    add-int/2addr v6, v8

    iget v7, v4, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->propertyIndex:I

    add-int/2addr v6, v7

    aget-object v0, v9, v6

    .line 128
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lae/com/sun/xml/bind/v2/runtime/property/Property;>;"
    const/4 v6, 0x2

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lae/com/sun/xml/bind/v2/runtime/property/Property;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 126
    .end local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lae/com/sun/xml/bind/v2/runtime/property/Property;>;"
    :cond_1
    const/4 v6, 0x6

    move v8, v6

    goto :goto_1

    :cond_2
    move v6, v7

    goto :goto_2

    .line 129
    .restart local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lae/com/sun/xml/bind/v2/runtime/property/Property;>;"
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v6, Ljava/lang/InstantiationError;

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 131
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/IllegalAccessError;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 133
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 135
    .local v5, "t":Ljava/lang/Throwable;
    instance-of v6, v5, Ljava/lang/Error;

    if-eqz v6, :cond_3

    .line 136
    check-cast v5, Ljava/lang/Error;

    .end local v5    # "t":Ljava/lang/Throwable;
    throw v5

    .line 137
    .restart local v5    # "t":Ljava/lang/Throwable;
    :cond_3
    instance-of v6, v5, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_4

    .line 138
    check-cast v5, Ljava/lang/RuntimeException;

    .end local v5    # "t":Ljava/lang/Throwable;
    throw v5

    .line 140
    .restart local v5    # "t":Ljava/lang/Throwable;
    :cond_4
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method static isLeaf(Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;)Z
    .locals 6
    .param p0, "info"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 149
    invoke-interface {p0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->ref()Ljava/util/Collection;

    move-result-object v1

    .line 150
    .local v1, "types":Ljava/util/Collection;, "Ljava/util/Collection<+Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-eq v2, v4, :cond_0

    move v2, v3

    .line 168
    :goto_0
    return v2

    .line 152
    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;

    .line 153
    .local v0, "rti":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;
    instance-of v2, v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    .line 155
    :cond_1
    invoke-interface {p0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->id()Lae/com/sun/xml/bind/v2/model/core/ID;

    move-result-object v2

    sget-object v5, Lae/com/sun/xml/bind/v2/model/core/ID;->IDREF:Lae/com/sun/xml/bind/v2/model/core/ID;

    if-ne v2, v5, :cond_2

    move v2, v4

    .line 157
    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 159
    check-cast v2, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;->getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    .line 163
    goto :goto_0

    .line 165
    :cond_3
    invoke-interface {p0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->getIndividualType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;->getType()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    .line 166
    goto :goto_0

    :cond_4
    move v2, v4

    .line 168
    goto :goto_0
.end method
