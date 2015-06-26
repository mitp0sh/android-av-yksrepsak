.class final Lcom/sun/xml/txw2/NamespaceDecl;
.super Ljava/lang/Object;
.source "NamespaceDecl.java"


# instance fields
.field declared:Z

.field final dummyPrefix:Ljava/lang/String;

.field next:Lcom/sun/xml/txw2/NamespaceDecl;

.field prefix:Ljava/lang/String;

.field requirePrefix:Z

.field final uniqueId:C

.field final uri:Ljava/lang/String;


# direct methods
.method constructor <init>(CLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "uniqueId"    # C
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "requirePrefix"    # Z

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/xml/txw2/NamespaceDecl;->dummyPrefix:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/sun/xml/txw2/NamespaceDecl;->uri:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/sun/xml/txw2/NamespaceDecl;->prefix:Ljava/lang/String;

    .line 80
    iput-boolean p4, p0, Lcom/sun/xml/txw2/NamespaceDecl;->requirePrefix:Z

    .line 81
    iput-char p1, p0, Lcom/sun/xml/txw2/NamespaceDecl;->uniqueId:C

    .line 82
    return-void
.end method
