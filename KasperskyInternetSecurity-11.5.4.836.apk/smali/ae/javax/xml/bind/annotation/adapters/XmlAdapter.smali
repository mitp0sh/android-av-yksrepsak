.class public abstract Lae/javax/xml/bind/annotation/adapters/XmlAdapter;
.super Ljava/lang/Object;
.source "XmlAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ValueType:",
        "Ljava/lang/Object;",
        "BoundType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 185
    .local p0, "this":Lae/javax/xml/bind/annotation/adapters/XmlAdapter;, "Lae/javax/xml/bind/annotation/adapters/XmlAdapter<TValueType;TBoundType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract marshal(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBoundType;)TValueType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract unmarshal(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TValueType;)TBoundType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
