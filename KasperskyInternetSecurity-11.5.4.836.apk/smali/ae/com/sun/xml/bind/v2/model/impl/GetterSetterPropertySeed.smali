.class Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;
.super Ljava/lang/Object;
.source "GetterSetterPropertySeed.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TypeT:",
        "Ljava/lang/Object;",
        "ClassDeclT:",
        "Ljava/lang/Object;",
        "FieldT:",
        "Ljava/lang/Object;",
        "MethodT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed",
        "<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    }
.end annotation


# instance fields
.field protected final getter:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMethodT;"
        }
    .end annotation
.end field

.field private parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl",
            "<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
        }
    .end annotation
.end field

.field protected final setter:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMethodT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl",
            "<TTypeT;TClassDeclT;TFieldT;TMethodT;>;TMethodT;TMethodT;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p1, "parent":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p2, "getter":Ljava/lang/Object;, "TMethodT;"
    .local p3, "setter":Ljava/lang/Object;, "TMethodT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    .line 65
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->getter:Ljava/lang/Object;

    .line 66
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->setter:Ljava/lang/Object;

    .line 68
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 70
    :cond_0
    return-void
.end method

.method private static camelize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p0}, Ljava/beans/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMethodT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p1, "m":Ljava/lang/Object;, "TMethodT;"
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v2

    invoke-interface {v2, p1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getMethodName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "seed":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "lseed":Ljava/lang/String;
    const-string v2, "get"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "set"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->camelize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .end local v1    # "seed":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 99
    .restart local v1    # "seed":Ljava/lang/String;
    :cond_2
    const-string v2, "is"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->camelize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getLocation()Lae/com/sun/xml/bind/v2/runtime/Location;
    .locals 2

    .prologue
    .line 117
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->getter:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->getter:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getMethodLocation(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/Location;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->setter:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getMethodLocation(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/Location;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->getter:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->getter:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->setter:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRawType()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTypeT;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->getter:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->getter:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getReturnType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->setter:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getMethodParameters(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getUpstream()Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    return-object v0
.end method

.method public hasAnnotation(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->getter:Ljava/lang/Object;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->setter:Ljava/lang/Object;

    move-object v1, p1

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->hasMethodAnnotation(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Z

    move-result v0

    return v0
.end method

.method public readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->getter:Ljava/lang/Object;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/GetterSetterPropertySeed;->setter:Ljava/lang/Object;

    invoke-interface {v0, p1, v1, v2, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getMethodAnnotation(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method
