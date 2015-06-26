.class public Lcom/sun/xml/txw2/output/TXWResult;
.super Ljava/lang/Object;
.source "TXWResult.java"

# interfaces
.implements Ljavax/xml/transform/Result;


# instance fields
.field private systemId:Ljava/lang/String;

.field private writer:Lcom/sun/xml/txw2/TypedXmlWriter;


# direct methods
.method public constructor <init>(Lcom/sun/xml/txw2/TypedXmlWriter;)V
    .locals 0
    .param p1, "writer"    # Lcom/sun/xml/txw2/TypedXmlWriter;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/sun/xml/txw2/output/TXWResult;->writer:Lcom/sun/xml/txw2/TypedXmlWriter;

    .line 64
    return-void
.end method


# virtual methods
.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sun/xml/txw2/output/TXWResult;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getWriter()Lcom/sun/xml/txw2/TypedXmlWriter;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sun/xml/txw2/output/TXWResult;->writer:Lcom/sun/xml/txw2/TypedXmlWriter;

    return-object v0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sun/xml/txw2/output/TXWResult;->systemId:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setWriter(Lcom/sun/xml/txw2/TypedXmlWriter;)V
    .locals 0
    .param p1, "writer"    # Lcom/sun/xml/txw2/TypedXmlWriter;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sun/xml/txw2/output/TXWResult;->writer:Lcom/sun/xml/txw2/TypedXmlWriter;

    .line 72
    return-void
.end method
