.class public Lcom/kaspersky/componenets/ipm/xml/NumericRangeType;
.super Ljava/lang/Object;
.source "NumericRangeType.java"


# annotations
.annotation runtime Lae/javax/xml/bind/annotation/XmlAccessorType;
    value = .enum Lae/javax/xml/bind/annotation/XmlAccessType;->FIELD:Lae/javax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Lae/javax/xml/bind/annotation/XmlType;
    name = "NumericRangeType"
    propOrder = {
        "from",
        "to"
    }
.end annotation


# instance fields
.field protected from:Ljava/math/BigInteger;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "From"
    .end annotation
.end field

.field protected to:Ljava/math/BigInteger;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "To"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrom()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/NumericRangeType;->from:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getTo()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/NumericRangeType;->to:Ljava/math/BigInteger;

    return-object v0
.end method

.method public setFrom(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/NumericRangeType;->from:Ljava/math/BigInteger;

    .line 72
    return-void
.end method

.method public setTo(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/NumericRangeType;->to:Ljava/math/BigInteger;

    .line 96
    return-void
.end method
