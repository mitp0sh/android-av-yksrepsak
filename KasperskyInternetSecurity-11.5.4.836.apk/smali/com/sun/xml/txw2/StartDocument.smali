.class final Lcom/sun/xml/txw2/StartDocument;
.super Lcom/sun/xml/txw2/Content;
.source "StartDocument.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sun/xml/txw2/Content;-><init>()V

    return-void
.end method


# virtual methods
.method accept(Lcom/sun/xml/txw2/ContentVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lcom/sun/xml/txw2/ContentVisitor;

    .prologue
    .line 52
    invoke-interface {p1}, Lcom/sun/xml/txw2/ContentVisitor;->onStartDocument()V

    .line 53
    return-void
.end method

.method concludesPendingStartTag()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method
