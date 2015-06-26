.class public final Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;
.super Ljava/lang/Object;
.source "ReflectionNavigator.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/nav/Navigator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/nav/Navigator",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        "Ljava/lang/reflect/Field;",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final baseClassFinder:Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static final binder:Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;",
            ">;"
        }
    .end annotation
.end field

.field private static final eraser:Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->$assertionsDisabled:Z

    .line 82
    new-instance v0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$1;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$1;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->baseClassFinder:Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;

    .line 185
    new-instance v0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$2;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$2;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->binder:Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;

    .line 358
    new-instance v0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$3;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$3;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->eraser:Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;

    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method static synthetic access$000()Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->binder:Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;

    return-object v0
.end method

.method private fix(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3
    .param p1, "t"    # Ljava/lang/reflect/Type;

    .prologue
    .line 631
    instance-of v2, p1, Ljava/lang/reflect/GenericArrayType;

    if-nez v2, :cond_1

    .line 641
    .end local p1    # "t":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "t":Ljava/lang/reflect/Type;
    :cond_1
    move-object v1, p1

    .line 635
    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    .line 636
    .local v1, "gat":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 637
    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 638
    .local v0, "c":Ljava/lang/Class;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public asDecl(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .param p1, "c"    # Ljava/lang/Class;

    .prologue
    .line 353
    return-object p1
.end method

.method public asDecl(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1
    .param p1, "t"    # Ljava/lang/reflect/Type;

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->erasure(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asDecl(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->asDecl(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asDecl(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Type;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->asDecl(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public varargs createParameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 2
    .param p1, "rawType"    # Ljava/lang/Class;
    .param p2, "arguments"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 415
    new-instance v0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;-><init>(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public erasure(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2
    .param p1, "t"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 400
    sget-object v0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->eraser:Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;->visit(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic erasure(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Type;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->erasure(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public findClass(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "referencePoint"    # Ljava/lang/Class;

    .prologue
    .line 564
    :try_start_0
    invoke-static {p2}, Lae/com/sun/xml/bind/v2/model/nav/SecureLoader;->getClassClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 565
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 566
    invoke-static {}, Lae/com/sun/xml/bind/v2/model/nav/SecureLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 568
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 570
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :goto_0
    return-object v2

    .line 569
    :catch_0
    move-exception v1

    .line 570
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic findClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p2, Ljava/lang/Class;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->findClass(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBaseClass(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Type;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Class;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getBaseClass(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getBaseClass(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "t"    # Ljava/lang/reflect/Type;
    .param p2, "sup"    # Ljava/lang/Class;

    .prologue
    .line 256
    sget-object v0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->baseClassFinder:Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;->visit(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getClassLocation(Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/Location;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 480
    new-instance v0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$4;

    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$4;-><init>(Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;Ljava/lang/Class;)V

    return-object v0
.end method

.method public bridge synthetic getClassLocation(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/Location;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getClassLocation(Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/Location;

    move-result-object v0

    return-object v0
.end method

.method public getClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 260
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassShortName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 275
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getClassShortName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getClassShortName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getComponentType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Type;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 2
    .param p1, "t"    # Ljava/lang/reflect/Type;

    .prologue
    .line 442
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 443
    check-cast v0, Ljava/lang/Class;

    .line 444
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 447
    .end local v0    # "c":Ljava/lang/Class;
    .end local p1    # "t":Ljava/lang/reflect/Type;
    :goto_0
    return-object v1

    .line 446
    .restart local p1    # "t":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v1, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_1

    .line 447
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .end local p1    # "t":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_0

    .line 450
    .restart local p1    # "t":Ljava/lang/reflect/Type;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public bridge synthetic getDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 284
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 286
    :goto_0
    return-object v1

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeclaredFields(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeclaredFields(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getDeclaredFields(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredMethods(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeclaredMethods(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getDeclaredMethods(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringClassForField(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 295
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeclaringClassForField(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Field;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getDeclaringClassForField(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringClassForMethod(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 299
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeclaringClassForMethod(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Method;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getDeclaringClassForMethod(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEnumConstants(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getEnumConstants(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public getEnumConstants(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 6
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 536
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    .line 537
    .local v3, "values":[Ljava/lang/Object;
    array-length v4, v3

    new-array v1, v4, [Ljava/lang/reflect/Field;

    .line 538
    .local v1, "fields":[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 539
    aget-object v4, v3, v2

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aput-object v4, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 542
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    .end local v2    # "i":I
    .end local v3    # "values":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v4, Ljava/lang/NoSuchFieldError;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 541
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v1    # "fields":[Ljava/lang/reflect/Field;
    .restart local v2    # "i":I
    .restart local v3    # "values":[Ljava/lang/Object;
    :cond_0
    return-object v1
.end method

.method public bridge synthetic getFieldLocation(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/Location;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Field;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getFieldLocation(Ljava/lang/reflect/Field;)Lae/com/sun/xml/bind/v2/runtime/Location;

    move-result-object v0

    return-object v0
.end method

.method public getFieldLocation(Ljava/lang/reflect/Field;)Lae/com/sun/xml/bind/v2/runtime/Location;
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 490
    new-instance v0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$5;

    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$5;-><init>(Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public bridge synthetic getFieldName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Field;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 313
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFieldType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Field;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getFieldType(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getFieldType(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Type;
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 303
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 305
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 309
    .end local v0    # "c":Ljava/lang/Class;
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p0, v1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->fix(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic getMethodLocation(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/Location;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Method;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getMethodLocation(Ljava/lang/reflect/Method;)Lae/com/sun/xml/bind/v2/runtime/Location;

    move-result-object v0

    return-object v0
.end method

.method public getMethodLocation(Ljava/lang/reflect/Method;)Lae/com/sun/xml/bind/v2/runtime/Location;
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 500
    new-instance v0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$6;

    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$6;-><init>(Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public bridge synthetic getMethodName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Method;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getMethodName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodName(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 317
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMethodParameters(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Method;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getMethodParameters(Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getMethodParameters(Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 325
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 553
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 555
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 556
    const-string v2, ""

    .line 558
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic getPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrimitive(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getPrimitive(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getPrimitive(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "primitiveType"    # Ljava/lang/Class;

    .prologue
    .line 475
    sget-boolean v0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 476
    :cond_0
    return-object p1
.end method

.method public bridge synthetic getReturnType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Method;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getReturnType(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 321
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->fix(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getSuperClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 73
    const-class v1, Ljava/lang/Object;

    if-ne p1, v1, :cond_1

    .line 74
    const/4 v0, 0x0

    .line 80
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 77
    .local v0, "sc":Ljava/lang/Class;
    if-nez v0, :cond_0

    .line 78
    const-class v0, Ljava/lang/Object;

    goto :goto_0
.end method

.method public bridge synthetic getSuperClass(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getSuperClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTypeArgument(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Type;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getTypeArgument(Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getTypeArgument(Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "i"    # I

    .prologue
    .line 454
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 455
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 456
    .local v0, "p":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-direct {p0, v1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->fix(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    return-object v1

    .line 458
    .end local v0    # "p":Ljava/lang/reflect/ParameterizedType;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public bridge synthetic getTypeName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Type;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getTypeName(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeName(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 264
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 265
    check-cast v0, Ljava/lang/Class;

    .line 266
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getTypeName(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    .end local v0    # "c":Ljava/lang/Class;
    :goto_0
    return-object v1

    .line 269
    .restart local v0    # "c":Ljava/lang/Class;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 271
    .end local v0    # "c":Ljava/lang/Class;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic getVoidType()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getVoidType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getVoidType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 549
    const-class v0, Ljava/lang/Void;

    return-object v0
.end method

.method public hasDefaultConstructor(Ljava/lang/Class;)Z
    .locals 3
    .param p1, "c"    # Ljava/lang/Class;

    .prologue
    const/4 v1, 0x0

    .line 511
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    const/4 v1, 0x1

    .line 514
    :goto_0
    return v1

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0
.end method

.method public bridge synthetic hasDefaultConstructor(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->hasDefaultConstructor(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isAbstract(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 404
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isAbstract(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->isAbstract(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isArray(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Type;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->isArray(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public isArray(Ljava/lang/reflect/Type;)Z
    .locals 2
    .param p1, "t"    # Ljava/lang/reflect/Type;

    .prologue
    .line 419
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 420
    check-cast v0, Ljava/lang/Class;

    .line 421
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    .line 426
    .end local v0    # "c":Ljava/lang/Class;
    :goto_0
    return v1

    .line 423
    :cond_0
    instance-of v1, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_1

    .line 424
    const/4 v1, 0x1

    goto :goto_0

    .line 426
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isArrayButNotByteArray(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Type;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->isArrayButNotByteArray(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public isArrayButNotByteArray(Ljava/lang/reflect/Type;)Z
    .locals 4
    .param p1, "t"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 430
    instance-of v3, p1, Ljava/lang/Class;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 431
    check-cast v0, Ljava/lang/Class;

    .line 432
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    const-class v3, [B

    if-eq v0, v3, :cond_1

    .line 438
    .end local v0    # "c":Ljava/lang/Class;
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "c":Ljava/lang/Class;
    :cond_1
    move v1, v2

    .line 432
    goto :goto_0

    .line 434
    .end local v0    # "c":Ljava/lang/Class;
    :cond_2
    instance-of v3, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_3

    .line 435
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .end local p1    # "t":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 436
    .restart local p1    # "t":Ljava/lang/reflect/Type;
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    .line 438
    goto :goto_0
.end method

.method public bridge synthetic isBridgeMethod(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Method;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->isBridgeMethod(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public isBridgeMethod(Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 575
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v0

    return v0
.end method

.method public isEnum(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "c"    # Ljava/lang/Class;

    .prologue
    .line 531
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isEnum(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->isEnum(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isFinal(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 408
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFinal(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->isFinal(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFinalMethod(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Method;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->isFinalMethod(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public isFinalMethod(Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 333
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method public isInnerClass(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 616
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isInnerClass(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->isInnerClass(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isInterface(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 608
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInterface(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->isInterface(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOverriding(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Method;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Class;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->isOverriding(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isOverriding(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "base"    # Ljava/lang/Class;

    .prologue
    .line 589
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 592
    .local v1, "params":[Ljava/lang/Class;
    :goto_0
    if-eqz p2, :cond_1

    .line 594
    :try_start_0
    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    .line 595
    const/4 v2, 0x1

    .line 604
    :goto_1
    return v2

    .line 597
    :catch_0
    move-exception v2

    .line 601
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_0

    .line 604
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public bridge synthetic isParameterizedType(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Type;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->isParameterizedType(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public isParameterizedType(Ljava/lang/reflect/Type;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 463
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    return v0
.end method

.method public bridge synthetic isPrimitive(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Type;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public isPrimitive(Ljava/lang/reflect/Type;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 467
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 468
    check-cast v0, Ljava/lang/Class;

    .line 469
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    .line 471
    .end local v0    # "c":Ljava/lang/Class;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isPublicField(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Field;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->isPublicField(Ljava/lang/reflect/Field;)Z

    move-result v0

    return v0
.end method

.method public isPublicField(Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 527
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPublicMethod(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Method;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->isPublicMethod(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public isPublicMethod(Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 523
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Type;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/reflect/Type;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->isSameType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public isSameType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 1
    .param p1, "t1"    # Ljava/lang/reflect/Type;
    .param p2, "t2"    # Ljava/lang/reflect/Type;

    .prologue
    .line 621
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isStaticField(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Field;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->isStaticField(Ljava/lang/reflect/Field;)Z

    move-result v0

    return v0
.end method

.method public isStaticField(Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 519
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isStaticMethod(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Method;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->isStaticMethod(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public isStaticMethod(Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 329
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isSubClassOf(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Type;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/reflect/Type;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->isSubClassOf(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public isSubClassOf(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 2
    .param p1, "sub"    # Ljava/lang/reflect/Type;
    .param p2, "sup"    # Ljava/lang/reflect/Type;

    .prologue
    .line 337
    invoke-virtual {p0, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->erasure(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->erasure(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isTransient(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/reflect/Field;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v0

    return v0
.end method

.method public isTransient(Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .prologue
    .line 612
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    return v0
.end method

.method public ref(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .param p1, "c"    # Ljava/lang/Class;

    .prologue
    .line 341
    return-object p1
.end method

.method public bridge synthetic ref(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->ref(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public use(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .param p1, "c"    # Ljava/lang/Class;

    .prologue
    .line 345
    return-object p1
.end method

.method public bridge synthetic use(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->use(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
