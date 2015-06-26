.class final Lcom/sun/xml/txw2/Cdata;
.super Lcom/sun/xml/txw2/Text;
.source "Cdata.java"


# direct methods
.method constructor <init>(Lcom/sun/xml/txw2/Document;Lcom/sun/xml/txw2/NamespaceResolver;Ljava/lang/Object;)V
    .locals 0
    .param p1, "document"    # Lcom/sun/xml/txw2/Document;
    .param p2, "nsResolver"    # Lcom/sun/xml/txw2/NamespaceResolver;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/xml/txw2/Text;-><init>(Lcom/sun/xml/txw2/Document;Lcom/sun/xml/txw2/NamespaceResolver;Ljava/lang/Object;)V

    .line 51
    return-void
.end method


# virtual methods
.method accept(Lcom/sun/xml/txw2/ContentVisitor;)V
    .locals 1
    .param p1, "visitor"    # Lcom/sun/xml/txw2/ContentVisitor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sun/xml/txw2/Cdata;->buffer:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Lcom/sun/xml/txw2/ContentVisitor;->onCdata(Ljava/lang/StringBuilder;)V

    .line 55
    return-void
.end method
