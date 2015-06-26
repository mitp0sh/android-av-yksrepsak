.class Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data$1;
.super Ljava/lang/Object;
.source "Base64Data.java"

# interfaces
.implements Ljavax/activation/DataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->getDataHandler()Ljavax/activation/DataHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 141
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->data:[B
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->access$000(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;)[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->dataLen:I
    invoke-static {v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->access$100(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
