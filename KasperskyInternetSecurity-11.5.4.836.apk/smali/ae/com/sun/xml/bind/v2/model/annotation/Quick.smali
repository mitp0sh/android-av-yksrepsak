.class public abstract Lae/com/sun/xml/bind/v2/model/annotation/Quick;
.super Ljava/lang/Object;
.source "Quick.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
.implements Lae/com/sun/xml/bind/v2/runtime/Location;
.implements Ljava/lang/annotation/Annotation;


# instance fields
.field private final upstream:Lae/com/sun/xml/bind/v2/model/annotation/Locatable;


# direct methods
.method protected constructor <init>(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V
    .locals 0
    .param p1, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/annotation/Quick;->upstream:Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .line 61
    return-void
.end method


# virtual methods
.method protected abstract getAnnotation()Ljava/lang/annotation/Annotation;
.end method

.method public final getLocation()Lae/com/sun/xml/bind/v2/runtime/Location;
    .locals 0

    .prologue
    .line 75
    return-object p0
.end method

.method public final getUpstream()Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/Quick;->upstream:Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    return-object v0
.end method

.method protected abstract newInstance(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/annotation/Annotation;)Lae/com/sun/xml/bind/v2/model/annotation/Quick;
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/annotation/Quick;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
