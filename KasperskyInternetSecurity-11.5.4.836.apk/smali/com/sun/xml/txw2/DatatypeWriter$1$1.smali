.class Lcom/sun/xml/txw2/DatatypeWriter$1$1;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/xml/txw2/DatatypeWriter$1;


# direct methods
.method constructor <init>(Lcom/sun/xml/txw2/DatatypeWriter$1;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sun/xml/txw2/DatatypeWriter$1$1;->this$0:Lcom/sun/xml/txw2/DatatypeWriter$1;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic print(Ljava/lang/Object;Lcom/sun/xml/txw2/NamespaceResolver;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/sun/xml/txw2/NamespaceResolver;
    .param p3, "x2"    # Ljava/lang/StringBuilder;

    .prologue
    .line 81
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/xml/txw2/DatatypeWriter$1$1;->print(Ljava/lang/String;Lcom/sun/xml/txw2/NamespaceResolver;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public print(Ljava/lang/String;Lcom/sun/xml/txw2/NamespaceResolver;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "resolver"    # Lcom/sun/xml/txw2/NamespaceResolver;
    .param p3, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 82
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    return-void
.end method
