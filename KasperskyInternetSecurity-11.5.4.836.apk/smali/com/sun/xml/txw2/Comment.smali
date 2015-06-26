.class final Lcom/sun/xml/txw2/Comment;
.super Lcom/sun/xml/txw2/Content;
.source "Comment.java"


# instance fields
.field private final buffer:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/sun/xml/txw2/Document;Lcom/sun/xml/txw2/NamespaceResolver;Ljava/lang/Object;)V
    .locals 1
    .param p1, "document"    # Lcom/sun/xml/txw2/Document;
    .param p2, "nsResolver"    # Lcom/sun/xml/txw2/NamespaceResolver;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/sun/xml/txw2/Content;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/txw2/Comment;->buffer:Ljava/lang/StringBuilder;

    .line 55
    iget-object v0, p0, Lcom/sun/xml/txw2/Comment;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p2, v0}, Lcom/sun/xml/txw2/Document;->writeValue(Ljava/lang/Object;Lcom/sun/xml/txw2/NamespaceResolver;Ljava/lang/StringBuilder;)V

    .line 56
    return-void
.end method


# virtual methods
.method accept(Lcom/sun/xml/txw2/ContentVisitor;)V
    .locals 1
    .param p1, "visitor"    # Lcom/sun/xml/txw2/ContentVisitor;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sun/xml/txw2/Comment;->buffer:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Lcom/sun/xml/txw2/ContentVisitor;->onComment(Ljava/lang/StringBuilder;)V

    .line 64
    return-void
.end method

.method concludesPendingStartTag()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method
