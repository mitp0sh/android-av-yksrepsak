.class public Lcom/kaspersky/componenets/ipm/xml/DateTimeRangeType;
.super Ljava/lang/Object;
.source "DateTimeRangeType.java"


# annotations
.annotation runtime Lae/javax/xml/bind/annotation/XmlAccessorType;
    value = .enum Lae/javax/xml/bind/annotation/XmlAccessType;->FIELD:Lae/javax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Lae/javax/xml/bind/annotation/XmlType;
    name = "DateTimeRangeType"
    propOrder = {
        "from",
        "to"
    }
.end annotation


# instance fields
.field protected from:Ljavax/xml/datatype/XMLGregorianCalendar;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "From"
        required = true
    .end annotation

    .annotation runtime Lae/javax/xml/bind/annotation/XmlSchemaType;
        name = "dateTime"
    .end annotation
.end field

.field protected to:Ljavax/xml/datatype/XMLGregorianCalendar;
    .annotation runtime Lae/javax/xml/bind/annotation/XmlElement;
        name = "To"
        required = true
    .end annotation

    .annotation runtime Lae/javax/xml/bind/annotation/XmlSchemaType;
        name = "dateTime"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrom()Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/DateTimeRangeType;->from:Ljavax/xml/datatype/XMLGregorianCalendar;

    return-object v0
.end method

.method public getTo()Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kaspersky/componenets/ipm/xml/DateTimeRangeType;->to:Ljavax/xml/datatype/XMLGregorianCalendar;

    return-object v0
.end method

.method public setFrom(Ljavax/xml/datatype/XMLGregorianCalendar;)V
    .locals 0
    .param p1, "value"    # Ljavax/xml/datatype/XMLGregorianCalendar;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/DateTimeRangeType;->from:Ljavax/xml/datatype/XMLGregorianCalendar;

    .line 75
    return-void
.end method

.method public setTo(Ljavax/xml/datatype/XMLGregorianCalendar;)V
    .locals 0
    .param p1, "value"    # Ljavax/xml/datatype/XMLGregorianCalendar;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/kaspersky/componenets/ipm/xml/DateTimeRangeType;->to:Ljavax/xml/datatype/XMLGregorianCalendar;

    .line 99
    return-void
.end method
