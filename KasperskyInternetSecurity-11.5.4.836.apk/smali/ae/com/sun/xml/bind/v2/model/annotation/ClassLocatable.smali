.class public Lae/com/sun/xml/bind/v2/model/annotation/ClassLocatable;
.super Ljava/lang/Object;
.source "ClassLocatable.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/annotation/Locatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;"
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/nav/Navigator",
            "<*TC;**>;"
        }
    .end annotation
.end field

.field private final upstream:Lae/com/sun/xml/bind/v2/model/annotation/Locatable;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/nav/Navigator;)V
    .locals 0
    .param p1, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            "TC;",
            "Lae/com/sun/xml/bind/v2/model/nav/Navigator",
            "<*TC;**>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/annotation/ClassLocatable;, "Lae/com/sun/xml/bind/v2/model/annotation/ClassLocatable<TC;>;"
    .local p2, "clazz":Ljava/lang/Object;, "TC;"
    .local p3, "nav":Lae/com/sun/xml/bind/v2/model/nav/Navigator;, "Lae/com/sun/xml/bind/v2/model/nav/Navigator<*TC;**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/annotation/ClassLocatable;->upstream:Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .line 58
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/annotation/ClassLocatable;->clazz:Ljava/lang/Object;

    .line 59
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/model/annotation/ClassLocatable;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    .line 60
    return-void
.end method


# virtual methods
.method public getLocation()Lae/com/sun/xml/bind/v2/runtime/Location;
    .locals 2

    .prologue
    .line 67
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/annotation/ClassLocatable;, "Lae/com/sun/xml/bind/v2/model/annotation/ClassLocatable<TC;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/ClassLocatable;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/annotation/ClassLocatable;->clazz:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassLocation(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/Location;

    move-result-object v0

    return-object v0
.end method

.method public getUpstream()Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/annotation/ClassLocatable;, "Lae/com/sun/xml/bind/v2/model/annotation/ClassLocatable<TC;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/ClassLocatable;->upstream:Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    return-object v0
.end method
