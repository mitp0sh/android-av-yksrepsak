.class public final Lae/com/sun/xml/bind/v2/util/DataSourceSource;
.super Ljavax/xml/transform/stream/StreamSource;
.source "DataSourceSource.java"


# instance fields
.field private final charset:Ljava/lang/String;

.field private is:Ljava/io/InputStream;

.field private r:Ljava/io/Reader;

.field private final source:Ljavax/activation/DataSource;


# direct methods
.method public constructor <init>(Ljavax/activation/DataHandler;)V
    .locals 1
    .param p1, "dh"    # Ljavax/activation/DataHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p1}, Ljavax/activation/DataHandler;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/util/DataSourceSource;-><init>(Ljavax/activation/DataSource;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .locals 3
    .param p1, "source"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljavax/xml/transform/stream/StreamSource;-><init>()V

    .line 88
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/util/DataSourceSource;->source:Ljavax/activation/DataSource;

    .line 90
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "ct":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 92
    const/4 v2, 0x0

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/util/DataSourceSource;->charset:Ljava/lang/String;

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v1, Ljavax/activation/MimeType;

    invoke-direct {v1, v0}, Ljavax/activation/MimeType;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "mimeType":Ljavax/activation/MimeType;
    const-string v2, "charset"

    invoke-virtual {v1, v2}, Ljavax/activation/MimeType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/util/DataSourceSource;->charset:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getDataSource()Ljavax/activation/DataSource;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/DataSourceSource;->source:Ljavax/activation/DataSource;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/util/DataSourceSource;->charset:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 128
    :goto_0
    return-object v1

    .line 126
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/util/DataSourceSource;->is:Ljava/io/InputStream;

    if-nez v1, :cond_1

    .line 127
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/util/DataSourceSource;->source:Ljavax/activation/DataSource;

    invoke-interface {v1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/util/DataSourceSource;->is:Ljava/io/InputStream;

    .line 128
    :cond_1
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/util/DataSourceSource;->is:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getReader()Ljava/io/Reader;
    .locals 4

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/util/DataSourceSource;->charset:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 115
    :goto_0
    return-object v1

    .line 113
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/util/DataSourceSource;->r:Ljava/io/Reader;

    if-nez v1, :cond_1

    .line 114
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/util/DataSourceSource;->source:Ljavax/activation/DataSource;

    invoke-interface {v2}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/util/DataSourceSource;->charset:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/util/DataSourceSource;->r:Ljava/io/Reader;

    .line 115
    :cond_1
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/util/DataSourceSource;->r:Ljava/io/Reader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setReader(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
