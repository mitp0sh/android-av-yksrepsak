.class public final Lae/com/sun/xml/bind/AnyTypeAdapter;
.super Lae/javax/xml/bind/annotation/adapters/XmlAdapter;
.source "AnyTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/javax/xml/bind/annotation/adapters/XmlAdapter",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lae/javax/xml/bind/annotation/adapters/XmlAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public marshal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 66
    return-object p1
.end method

.method public unmarshal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 59
    return-object p1
.end method
