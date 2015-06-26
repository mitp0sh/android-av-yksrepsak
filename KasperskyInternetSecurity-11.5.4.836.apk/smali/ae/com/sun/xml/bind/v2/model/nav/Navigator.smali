.class public interface abstract Lae/com/sun/xml/bind/v2/model/nav/Navigator;
.super Ljava/lang/Object;
.source "Navigator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final REFLECTION:Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->REFLECTION:Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    return-void
.end method


# virtual methods
.method public abstract asDecl(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")TC;"
        }
    .end annotation
.end method

.method public abstract asDecl(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TC;"
        }
    .end annotation
.end method

.method public abstract erasure(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract findClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TC;)TC;"
        }
    .end annotation
.end method

.method public abstract getBaseClass(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TC;)TT;"
        }
    .end annotation
.end method

.method public abstract getClassLocation(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lae/com/sun/xml/bind/v2/runtime/Location;"
        }
    .end annotation
.end method

.method public abstract getClassName(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getClassShortName(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getComponentType(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract getDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation
.end method

.method public abstract getDeclaredFields(Ljava/lang/Object;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Collection",
            "<+TF;>;"
        }
    .end annotation
.end method

.method public abstract getDeclaredMethods(Ljava/lang/Object;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Collection",
            "<+TM;>;"
        }
    .end annotation
.end method

.method public abstract getDeclaringClassForField(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TC;"
        }
    .end annotation
.end method

.method public abstract getDeclaringClassForMethod(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)TC;"
        }
    .end annotation
.end method

.method public abstract getEnumConstants(Ljava/lang/Object;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)[TF;"
        }
    .end annotation
.end method

.method public abstract getFieldLocation(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Lae/com/sun/xml/bind/v2/runtime/Location;"
        }
    .end annotation
.end method

.method public abstract getFieldName(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getFieldType(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation
.end method

.method public abstract getMethodLocation(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Lae/com/sun/xml/bind/v2/runtime/Location;"
        }
    .end annotation
.end method

.method public abstract getMethodName(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getMethodParameters(Ljava/lang/Object;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)[TT;"
        }
    .end annotation
.end method

.method public abstract getPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getPrimitive(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getReturnType(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)TT;"
        }
    .end annotation
.end method

.method public abstract getSuperClass(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TC;"
        }
    .end annotation
.end method

.method public abstract getTypeArgument(Ljava/lang/Object;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)TT;"
        }
    .end annotation
.end method

.method public abstract getTypeName(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getVoidType()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract hasDefaultConstructor(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method

.method public abstract isAbstract(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method

.method public abstract isArray(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract isArrayButNotByteArray(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract isBridgeMethod(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)Z"
        }
    .end annotation
.end method

.method public abstract isEnum(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method

.method public abstract isFinal(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method

.method public abstract isFinalMethod(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)Z"
        }
    .end annotation
.end method

.method public abstract isInnerClass(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method

.method public abstract isInterface(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method

.method public abstract isOverriding(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;TC;)Z"
        }
    .end annotation
.end method

.method public abstract isParameterizedType(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract isPrimitive(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract isPublicField(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation
.end method

.method public abstract isPublicMethod(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)Z"
        }
    .end annotation
.end method

.method public abstract isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method public abstract isStaticField(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation
.end method

.method public abstract isStaticMethod(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)Z"
        }
    .end annotation
.end method

.method public abstract isSubClassOf(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method public abstract isTransient(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation
.end method

.method public abstract ref(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract use(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TT;"
        }
    .end annotation
.end method
