.class public Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ResponseHeaderOverrides.java"


# static fields
.field private static final PARAMETER_ORDER:[Ljava/lang/String;

.field public static final RESPONSE_HEADER_CACHE_CONTROL:Ljava/lang/String; = "response-cache-control"

.field public static final RESPONSE_HEADER_CONTENT_DISPOSITION:Ljava/lang/String; = "response-content-disposition"

.field public static final RESPONSE_HEADER_CONTENT_ENCODING:Ljava/lang/String; = "response-content-encoding"

.field public static final RESPONSE_HEADER_CONTENT_LANGUAGE:Ljava/lang/String; = "response-content-language"

.field public static final RESPONSE_HEADER_CONTENT_TYPE:Ljava/lang/String; = "response-content-type"

.field public static final RESPONSE_HEADER_EXPIRES:Ljava/lang/String; = "response-expires"


# instance fields
.field private cacheControl:Ljava/lang/String;

.field private contentDisposition:Ljava/lang/String;

.field private contentEncoding:Ljava/lang/String;

.field private contentLanguage:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private expires:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "response-cache-control"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "response-content-disposition"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "response-content-encoding"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "response-content-language"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "response-content-type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "response-expires"

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->PARAMETER_ORDER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->cacheControl:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->contentDisposition:Ljava/lang/String;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->contentLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->expires:Ljava/lang/String;

    return-object v0
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 0
    .param p1, "cacheControl"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->cacheControl:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentDisposition"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->contentDisposition:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentEncoding"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->contentEncoding:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setContentLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentLanguage"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->contentLanguage:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->contentType:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setExpires(Ljava/lang/String;)V
    .locals 0
    .param p1, "expires"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->expires:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public withCacheControl(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .locals 0
    .param p1, "cacheControl"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setCacheControl(Ljava/lang/String;)V

    .line 196
    return-object p0
.end method

.method public withContentDisposition(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .locals 0
    .param p1, "contentDisposition"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setContentDisposition(Ljava/lang/String;)V

    .line 228
    return-object p0
.end method

.method public withContentEncoding(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .locals 0
    .param p1, "contentEncoding"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setContentEncoding(Ljava/lang/String;)V

    .line 260
    return-object p0
.end method

.method public withContentLanguage(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .locals 0
    .param p1, "contentLanguage"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setContentLanguage(Ljava/lang/String;)V

    .line 132
    return-object p0
.end method

.method public withContentType(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setContentType(Ljava/lang/String;)V

    .line 100
    return-object p0
.end method

.method public withExpires(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .locals 0
    .param p1, "expires"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setExpires(Ljava/lang/String;)V

    .line 164
    return-object p0
.end method
