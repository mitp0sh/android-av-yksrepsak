.class public Lcom/amazonaws/javax/xml/transform/TransformerConfigurationException;
.super Lcom/amazonaws/javax/xml/transform/TransformerException;
.source "TransformerConfigurationException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "Configuration Error"

    invoke-direct {p0, v0}, Lcom/amazonaws/javax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/amazonaws/javax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/transform/SourceLocator;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Lcom/amazonaws/javax/xml/transform/SourceLocator;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/javax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/transform/SourceLocator;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Lcom/amazonaws/javax/xml/transform/SourceLocator;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/javax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/javax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/amazonaws/javax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    .line 76
    return-void
.end method
