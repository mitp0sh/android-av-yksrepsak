.class Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl;
.super Ljava/lang/Object;
.source "AnyTypeImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/NonElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/NonElement",
        "<TT;TC;>;"
    }
.end annotation


# instance fields
.field private final nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/nav/Navigator",
            "<TT;TC;**>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/nav/Navigator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/nav/Navigator",
            "<TT;TC;**>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl;, "Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl<TT;TC;>;"
    .local p1, "nav":Lae/com/sun/xml/bind/v2/model/nav/Navigator;, "Lae/com/sun/xml/bind/v2/model/nav/Navigator<TT;TC;**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-class v0, Ljava/lang/Object;

    invoke-interface {p1, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl;->type:Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    .line 65
    return-void
.end method


# virtual methods
.method public final canBeReferencedByIDREF()Z
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl;, "Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl<TT;TC;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public getLocation()Lae/com/sun/xml/bind/v2/runtime/Location;
    .locals 3

    .prologue
    .line 84
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl;, "Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl<TT;TC;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    const-class v2, Ljava/lang/Object;

    invoke-interface {v1, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassLocation(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/Location;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl;, "Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl<TT;TC;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl;->type:Ljava/lang/Object;

    return-object v0
.end method

.method public getTypeName()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl;, "Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl<TT;TC;>;"
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl;->ANYTYPE_NAME:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public getUpstream()Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl;, "Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl<TT;TC;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSimpleType()Z
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl;, "Lae/com/sun/xml/bind/v2/model/impl/AnyTypeImpl<TT;TC;>;"
    const/4 v0, 0x0

    return v0
.end method
