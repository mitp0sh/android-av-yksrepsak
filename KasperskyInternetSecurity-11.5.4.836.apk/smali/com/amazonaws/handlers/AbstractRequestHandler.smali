.class public abstract Lcom/amazonaws/handlers/AbstractRequestHandler;
.super Ljava/lang/Object;
.source "AbstractRequestHandler.java"

# interfaces
.implements Lcom/amazonaws/handlers/RequestHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterError(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    .locals 0
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    return-void
.end method

.method public afterResponse(Lcom/amazonaws/Request;Ljava/lang/Object;Lcom/amazonaws/util/TimingInfo;)V
    .locals 0
    .param p2, "response"    # Ljava/lang/Object;
    .param p3, "timingInfo"    # Lcom/amazonaws/util/TimingInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Ljava/lang/Object;",
            "Lcom/amazonaws/util/TimingInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    return-void
.end method

.method public beforeRequest(Lcom/amazonaws/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    return-void
.end method
