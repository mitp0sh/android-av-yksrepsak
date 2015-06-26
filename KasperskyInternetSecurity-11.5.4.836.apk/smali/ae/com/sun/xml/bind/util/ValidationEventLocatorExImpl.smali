.class public Lae/com/sun/xml/bind/util/ValidationEventLocatorExImpl;
.super Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;
.source "ValidationEventLocatorExImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/ValidationEventLocatorEx;


# instance fields
.field private final fieldName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;-><init>(Ljava/lang/Object;)V

    .line 60
    iput-object p2, p0, Lae/com/sun/xml/bind/util/ValidationEventLocatorExImpl;->fieldName:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lae/com/sun/xml/bind/util/ValidationEventLocatorExImpl;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 72
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "[url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {p0}, Lae/com/sun/xml/bind/util/ValidationEventLocatorExImpl;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 74
    const-string v1, ",line="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {p0}, Lae/com/sun/xml/bind/util/ValidationEventLocatorExImpl;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 76
    const-string v1, ",column="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {p0}, Lae/com/sun/xml/bind/util/ValidationEventLocatorExImpl;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 78
    const-string v1, ",node="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {p0}, Lae/com/sun/xml/bind/util/ValidationEventLocatorExImpl;->getNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 80
    const-string v1, ",object="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {p0}, Lae/com/sun/xml/bind/util/ValidationEventLocatorExImpl;->getObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 82
    const-string v1, ",field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {p0}, Lae/com/sun/xml/bind/util/ValidationEventLocatorExImpl;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
