.class public Lcom/kaspersky/componenets/ipm/xml/Adapter1;
.super Lae/javax/xml/bind/annotation/adapters/XmlAdapter;
.source "Adapter1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/javax/xml/bind/annotation/adapters/XmlAdapter",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lae/javax/xml/bind/annotation/adapters/XmlAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic marshal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/kaspersky/componenets/ipm/xml/Adapter1;->marshal(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public marshal(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/util/Calendar;

    .prologue
    .line 24
    if-nez p1, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverter;->printDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic unmarshal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kaspersky/componenets/ipm/xml/Adapter1;->unmarshal(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public unmarshal(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverter;->parseDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method
