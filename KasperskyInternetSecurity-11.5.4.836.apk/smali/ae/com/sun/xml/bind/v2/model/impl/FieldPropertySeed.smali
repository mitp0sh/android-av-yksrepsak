.class Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed;
.super Ljava/lang/Object;
.source "FieldPropertySeed.java"

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
.field protected final field:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFieldT;"
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


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl",
            "<TTypeT;TClassDeclT;TFieldT;TMethodT;>;TFieldT;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p1, "classInfo":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p2, "field":Ljava/lang/Object;, "TFieldT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    .line 60
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed;->field:Ljava/lang/Object;

    .line 61
    return-void
.end method


# virtual methods
.method public getLocation()Lae/com/sun/xml/bind/v2/runtime/Location;
    .locals 2

    .prologue
    .line 89
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed;->field:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getFieldLocation(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/Location;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed;->field:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getFieldName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawType()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTypeT;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed;->field:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getFieldType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUpstream()Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    return-object v0
.end method

.method public hasAnnotation(Ljava/lang/Class;)Z
    .locals 2
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
    .line 68
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed;->field:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->hasFieldAnnotation(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
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
    .line 64
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed<TTypeT;TClassDeclT;TFieldT;TMethodT;>;"
    .local p1, "a":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed;->parent:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/FieldPropertySeed;->field:Ljava/lang/Object;

    invoke-interface {v0, p1, v1, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getFieldAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method
