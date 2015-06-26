.class abstract Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;
.super Ljava/lang/Object;
.source "LeafInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/LeafInfo;
.implements Lae/com/sun/xml/bind/v2/runtime/Location;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TypeT:",
        "Ljava/lang/Object;",
        "ClassDeclT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/LeafInfo",
        "<TTypeT;TClassDeclT;>;",
        "Lae/com/sun/xml/bind/v2/runtime/Location;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final type:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTypeT;"
        }
    .end annotation
.end field

.field private final typeName:Ljavax/xml/namespace/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/Object;Ljavax/xml/namespace/QName;)V
    .locals 1
    .param p2, "typeName"    # Ljavax/xml/namespace/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeT;",
            "Ljavax/xml/namespace/QName;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl<TTypeT;TClassDeclT;>;"
    .local p1, "type":Ljava/lang/Object;, "TTypeT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-boolean v0, Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_0
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;->type:Ljava/lang/Object;

    .line 63
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;->typeName:Ljavax/xml/namespace/QName;

    .line 64
    return-void
.end method


# virtual methods
.method public final canBeReferencedByIDREF()Z
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl<TTypeT;TClassDeclT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getLocation()Lae/com/sun/xml/bind/v2/runtime/Location;
    .locals 0

    .prologue
    .line 95
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl<TTypeT;TClassDeclT;>;"
    return-object p0
.end method

.method public getType()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTypeT;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl<TTypeT;TClassDeclT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;->type:Ljava/lang/Object;

    return-object v0
.end method

.method public getTypeName()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl<TTypeT;TClassDeclT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;->typeName:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public getUpstream()Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl<TTypeT;TClassDeclT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSimpleType()Z
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl<TTypeT;TClassDeclT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl<TTypeT;TClassDeclT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/LeafInfoImpl;->type:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
