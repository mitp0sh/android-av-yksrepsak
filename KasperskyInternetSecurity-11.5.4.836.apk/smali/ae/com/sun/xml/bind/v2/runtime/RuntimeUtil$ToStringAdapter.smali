.class public final Lae/com/sun/xml/bind/v2/runtime/RuntimeUtil$ToStringAdapter;
.super Lae/javax/xml/bind/annotation/adapters/XmlAdapter;
.source "RuntimeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/RuntimeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/javax/xml/bind/annotation/adapters/XmlAdapter",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lae/javax/xml/bind/annotation/adapters/XmlAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic marshal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/RuntimeUtil$ToStringAdapter;->marshal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public marshal(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 71
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic unmarshal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/RuntimeUtil$ToStringAdapter;->unmarshal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unmarshal(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
