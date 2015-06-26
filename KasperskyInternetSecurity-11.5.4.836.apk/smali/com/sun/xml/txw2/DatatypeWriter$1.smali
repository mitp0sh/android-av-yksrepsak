.class Lcom/sun/xml/txw2/DatatypeWriter$1;
.super Ljava/util/AbstractList;
.source "DatatypeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/txw2/DatatypeWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private BUILTIN_ARRAY:[Lcom/sun/xml/txw2/DatatypeWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/sun/xml/txw2/DatatypeWriter",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sun/xml/txw2/DatatypeWriter;

    const/4 v1, 0x0

    new-instance v2, Lcom/sun/xml/txw2/DatatypeWriter$1$1;

    invoke-direct {v2, p0}, Lcom/sun/xml/txw2/DatatypeWriter$1$1;-><init>(Lcom/sun/xml/txw2/DatatypeWriter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sun/xml/txw2/DatatypeWriter$1$2;

    invoke-direct {v2, p0}, Lcom/sun/xml/txw2/DatatypeWriter$1$2;-><init>(Lcom/sun/xml/txw2/DatatypeWriter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/sun/xml/txw2/DatatypeWriter$1$3;

    invoke-direct {v2, p0}, Lcom/sun/xml/txw2/DatatypeWriter$1$3;-><init>(Lcom/sun/xml/txw2/DatatypeWriter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/sun/xml/txw2/DatatypeWriter$1$4;

    invoke-direct {v2, p0}, Lcom/sun/xml/txw2/DatatypeWriter$1$4;-><init>(Lcom/sun/xml/txw2/DatatypeWriter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/sun/xml/txw2/DatatypeWriter$1$5;

    invoke-direct {v2, p0}, Lcom/sun/xml/txw2/DatatypeWriter$1$5;-><init>(Lcom/sun/xml/txw2/DatatypeWriter$1;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sun/xml/txw2/DatatypeWriter$1;->BUILTIN_ARRAY:[Lcom/sun/xml/txw2/DatatypeWriter;

    return-void
.end method


# virtual methods
.method public get(I)Lcom/sun/xml/txw2/DatatypeWriter;
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sun/xml/txw2/DatatypeWriter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sun/xml/txw2/DatatypeWriter$1;->BUILTIN_ARRAY:[Lcom/sun/xml/txw2/DatatypeWriter;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/sun/xml/txw2/DatatypeWriter$1;->get(I)Lcom/sun/xml/txw2/DatatypeWriter;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sun/xml/txw2/DatatypeWriter$1;->BUILTIN_ARRAY:[Lcom/sun/xml/txw2/DatatypeWriter;

    array-length v0, v0

    return v0
.end method
