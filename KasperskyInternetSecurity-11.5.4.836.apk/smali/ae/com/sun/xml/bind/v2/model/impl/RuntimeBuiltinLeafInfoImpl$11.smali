.class final Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$11;
.super Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$StringImpl;
.source "RuntimeBuiltinLeafInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$StringImpl",
        "<",
        "Ljavax/xml/datatype/XMLGregorianCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method varargs constructor <init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # [Ljavax/xml/namespace/QName;

    .prologue
    .line 560
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$StringImpl;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method private format(Ljava/lang/String;Ljavax/xml/datatype/XMLGregorianCalendar;)Ljava/lang/String;
    .locals 10
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "value"    # Ljavax/xml/datatype/XMLGregorianCalendar;

    .prologue
    const/4 v9, 0x2

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 594
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "fidx":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "flen":I
    move v3, v2

    .line 596
    .end local v2    # "fidx":I
    .local v3, "fidx":I
    :cond_0
    :goto_0
    if-ge v3, v4, :cond_4

    .line 597
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "fidx":I
    .restart local v2    # "fidx":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 598
    .local v1, "fch":C
    const/16 v7, 0x25

    if-eq v1, v7, :cond_1

    .line 599
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v2

    .line 600
    .end local v2    # "fidx":I
    .restart local v3    # "fidx":I
    goto :goto_0

    .line 603
    .end local v3    # "fidx":I
    .restart local v2    # "fidx":I
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "fidx":I
    .restart local v3    # "fidx":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 644
    new-instance v7, Ljava/lang/InternalError;

    invoke-direct {v7}, Ljava/lang/InternalError;-><init>()V

    throw v7

    .line 605
    :sswitch_0
    invoke-virtual {p2}, Ljavax/xml/datatype/XMLGregorianCalendar;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v7

    const/4 v8, 0x4

    invoke-direct {p0, v0, v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$11;->printNumber(Ljava/lang/StringBuilder;Ljava/math/BigInteger;I)V

    goto :goto_0

    .line 608
    :sswitch_1
    invoke-virtual {p2}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMonth()I

    move-result v7

    invoke-direct {p0, v0, v7, v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$11;->printNumber(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    .line 611
    :sswitch_2
    invoke-virtual {p2}, Ljavax/xml/datatype/XMLGregorianCalendar;->getDay()I

    move-result v7

    invoke-direct {p0, v0, v7, v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$11;->printNumber(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    .line 614
    :sswitch_3
    invoke-virtual {p2}, Ljavax/xml/datatype/XMLGregorianCalendar;->getHour()I

    move-result v7

    invoke-direct {p0, v0, v7, v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$11;->printNumber(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    .line 617
    :sswitch_4
    invoke-virtual {p2}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMinute()I

    move-result v7

    invoke-direct {p0, v0, v7, v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$11;->printNumber(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    .line 620
    :sswitch_5
    invoke-virtual {p2}, Ljavax/xml/datatype/XMLGregorianCalendar;->getSecond()I

    move-result v7

    invoke-direct {p0, v0, v7, v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$11;->printNumber(Ljava/lang/StringBuilder;II)V

    .line 621
    invoke-virtual {p2}, Ljavax/xml/datatype/XMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 622
    invoke-virtual {p2}, Ljavax/xml/datatype/XMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v5

    .line 624
    .local v5, "frac":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 628
    .end local v5    # "frac":Ljava/lang/String;
    :sswitch_6
    invoke-virtual {p2}, Ljavax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v6

    .line 629
    .local v6, "offset":I
    if-nez v6, :cond_2

    .line 630
    const/16 v7, 0x5a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 631
    :cond_2
    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_0

    .line 632
    if-gez v6, :cond_3

    .line 633
    const/16 v7, 0x2d

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 634
    mul-int/lit8 v6, v6, -0x1

    .line 638
    :goto_1
    div-int/lit8 v7, v6, 0x3c

    invoke-direct {p0, v0, v7, v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$11;->printNumber(Ljava/lang/StringBuilder;II)V

    .line 639
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 640
    rem-int/lit8 v7, v6, 0x3c

    invoke-direct {p0, v0, v7, v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$11;->printNumber(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_0

    .line 636
    :cond_3
    const/16 v7, 0x2b

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 648
    .end local v1    # "fch":C
    .end local v6    # "offset":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 603
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x4d -> :sswitch_1
        0x59 -> :sswitch_0
        0x68 -> :sswitch_3
        0x6d -> :sswitch_4
        0x73 -> :sswitch_5
        0x7a -> :sswitch_6
    .end sparse-switch
.end method

.method private printNumber(Ljava/lang/StringBuilder;II)V
    .locals 3
    .param p1, "out"    # Ljava/lang/StringBuilder;
    .param p2, "number"    # I
    .param p3, "nDigits"    # I

    .prologue
    .line 657
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 659
    const/16 v2, 0x30

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    return-void
.end method

.method private printNumber(Ljava/lang/StringBuilder;Ljava/math/BigInteger;I)V
    .locals 3
    .param p1, "out"    # Ljava/lang/StringBuilder;
    .param p2, "number"    # Ljava/math/BigInteger;
    .param p3, "nDigits"    # I

    .prologue
    .line 651
    invoke-virtual {p2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    .line 652
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 653
    const/16 v2, 0x30

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 652
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    return-void
.end method


# virtual methods
.method public bridge synthetic getTypeName(Ljava/lang/Object;)Ljavax/xml/namespace/QName;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 560
    check-cast p1, Ljavax/xml/datatype/XMLGregorianCalendar;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$11;->getTypeName(Ljavax/xml/datatype/XMLGregorianCalendar;)Ljavax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public getTypeName(Ljavax/xml/datatype/XMLGregorianCalendar;)Ljavax/xml/namespace/QName;
    .locals 1
    .param p1, "cal"    # Ljavax/xml/datatype/XMLGregorianCalendar;

    .prologue
    .line 664
    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getXMLSchemaType()Ljavax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$11;->parse(Ljava/lang/CharSequence;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/CharSequence;)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 3
    .param p1, "lexical"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 584
    :try_start_0
    # getter for: Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->datatypeFactory:Ljavax/xml/datatype/DatatypeFactory;
    invoke-static {}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->access$400()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 587
    :goto_0
    return-object v1

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getInstance()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleError(Ljava/lang/Exception;)V

    .line 587
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic print(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 560
    check-cast p1, Ljavax/xml/datatype/XMLGregorianCalendar;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$11;->print(Ljavax/xml/datatype/XMLGregorianCalendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic print(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 560
    check-cast p1, Ljavax/xml/datatype/XMLGregorianCalendar;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$11;->print(Ljavax/xml/datatype/XMLGregorianCalendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljavax/xml/datatype/XMLGregorianCalendar;)Ljava/lang/String;
    .locals 8
    .param p1, "cal"    # Ljavax/xml/datatype/XMLGregorianCalendar;

    .prologue
    .line 562
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getInstance()Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    move-result-object v3

    .line 564
    .local v3, "xs":Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getSchemaType()Ljavax/xml/namespace/QName;

    move-result-object v2

    .line 565
    .local v2, "type":Ljavax/xml/namespace/QName;
    if-eqz v2, :cond_0

    .line 567
    :try_start_0
    # invokes: Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->checkXmlGregorianCalendarFieldRef(Ljavax/xml/namespace/QName;Ljavax/xml/datatype/XMLGregorianCalendar;)V
    invoke-static {v2, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->access$200(Ljavax/xml/namespace/QName;Ljavax/xml/datatype/XMLGregorianCalendar;)V

    .line 568
    # getter for: Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->xmlGregorianCalendarFormatString:Ljava/util/Map;
    invoke-static {}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->access$300()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 569
    .local v1, "format":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 570
    invoke-direct {p0, v1, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$11;->format(Ljava/lang/String;Ljavax/xml/datatype/XMLGregorianCalendar;)Ljava/lang/String;
    :try_end_0
    .catch Lae/javax/xml/bind/MarshalException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 579
    .end local v1    # "format":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 572
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Lae/javax/xml/bind/MarshalException;
    new-instance v4, Lae/javax/xml/bind/helpers/ValidationEventImpl;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lae/javax/xml/bind/MarshalException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getCurrentLocation(Ljava/lang/String;)Lae/javax/xml/bind/ValidationEventLocator;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lae/javax/xml/bind/helpers/ValidationEventImpl;-><init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;)V

    invoke-virtual {v3, v4}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->handleEvent(Lae/javax/xml/bind/ValidationEvent;)Z

    .line 576
    const-string v4, ""

    goto :goto_0

    .line 579
    .end local v0    # "e":Lae/javax/xml/bind/MarshalException;
    :cond_0
    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->toXMLFormat()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
