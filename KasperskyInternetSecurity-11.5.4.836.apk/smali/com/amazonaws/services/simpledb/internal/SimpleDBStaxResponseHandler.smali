.class public Lcom/amazonaws/services/simpledb/internal/SimpleDBStaxResponseHandler;
.super Lcom/amazonaws/http/StaxResponseHandler;
.source "SimpleDBStaxResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazonaws/http/StaxResponseHandler",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazonaws/transform/Unmarshaller;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TT;",
            "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/amazonaws/services/simpledb/internal/SimpleDBStaxResponseHandler;, "Lcom/amazonaws/services/simpledb/internal/SimpleDBStaxResponseHandler<TT;>;"
    .local p1, "responseUnmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<TT;Lcom/amazonaws/transform/StaxUnmarshallerContext;>;"
    invoke-direct {p0, p1}, Lcom/amazonaws/http/StaxResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected registerAdditionalMetadataExpressions(Lcom/amazonaws/transform/StaxUnmarshallerContext;)V
    .locals 3
    .param p1, "unmarshallerContext"    # Lcom/amazonaws/transform/StaxUnmarshallerContext;

    .prologue
    .line 30
    .local p0, "this":Lcom/amazonaws/services/simpledb/internal/SimpleDBStaxResponseHandler;, "Lcom/amazonaws/services/simpledb/internal/SimpleDBStaxResponseHandler<TT;>;"
    const-string v0, "ResponseMetadata/BoxUsage"

    const/4 v1, 0x2

    const-string v2, "BOX_USAGE"

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->registerMetadataExpression(Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    return-void
.end method
