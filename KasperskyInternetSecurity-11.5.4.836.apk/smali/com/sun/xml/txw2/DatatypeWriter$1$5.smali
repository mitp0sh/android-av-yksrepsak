.class Lcom/sun/xml/txw2/DatatypeWriter$1$5;
.super Ljava/lang/Object;
.source "DatatypeWriter.java"

# interfaces
.implements Lcom/sun/xml/txw2/DatatypeWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/txw2/DatatypeWriter$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sun/xml/txw2/DatatypeWriter",
        "<",
        "Ljavax/xml/namespace/QName;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/xml/txw2/DatatypeWriter$1;


# direct methods
.method constructor <init>(Lcom/sun/xml/txw2/DatatypeWriter$1;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sun/xml/txw2/DatatypeWriter$1$5;->this$0:Lcom/sun/xml/txw2/DatatypeWriter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    const-class v0, Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public bridge synthetic print(Ljava/lang/Object;Lcom/sun/xml/txw2/NamespaceResolver;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/sun/xml/txw2/NamespaceResolver;
    .param p3, "x2"    # Ljava/lang/StringBuilder;

    .prologue
    .line 113
    check-cast p1, Ljavax/xml/namespace/QName;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/xml/txw2/DatatypeWriter$1$5;->print(Ljavax/xml/namespace/QName;Lcom/sun/xml/txw2/NamespaceResolver;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public print(Ljavax/xml/namespace/QName;Lcom/sun/xml/txw2/NamespaceResolver;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "qn"    # Ljavax/xml/namespace/QName;
    .param p2, "resolver"    # Lcom/sun/xml/txw2/NamespaceResolver;
    .param p3, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 114
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/sun/xml/txw2/NamespaceResolver;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "p":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    :cond_0
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    return-void
.end method
