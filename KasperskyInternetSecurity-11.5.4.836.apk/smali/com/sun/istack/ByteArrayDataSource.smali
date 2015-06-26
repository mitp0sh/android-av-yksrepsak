.class public final Lcom/sun/istack/ByteArrayDataSource;
.super Ljava/lang/Object;
.source "ByteArrayDataSource.java"

# interfaces
.implements Ljavax/activation/DataSource;


# instance fields
.field private final buf:[B

.field private final contentType:Ljava/lang/String;

.field private final len:I


# direct methods
.method public constructor <init>([BILjava/lang/String;)V
    .locals 0
    .param p1, "buf"    # [B
    .param p2, "length"    # I
    .param p3, "contentType"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sun/istack/ByteArrayDataSource;->buf:[B

    .line 24
    iput p2, p0, Lcom/sun/istack/ByteArrayDataSource;->len:I

    .line 25
    iput-object p3, p0, Lcom/sun/istack/ByteArrayDataSource;->contentType:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 20
    array-length v0, p1

    invoke-direct {p0, p1, v0, p2}, Lcom/sun/istack/ByteArrayDataSource;-><init>([BILjava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sun/istack/ByteArrayDataSource;->contentType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 30
    const-string v0, "application/octet-stream"

    .line 31
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/istack/ByteArrayDataSource;->contentType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/sun/istack/ByteArrayDataSource;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/sun/istack/ByteArrayDataSource;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
