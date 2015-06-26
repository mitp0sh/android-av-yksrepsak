.class public final LmW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kms/call/CallBlockerActivity;


# direct methods
.method public constructor <init>(Lcom/kms/call/CallBlockerActivity;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, LmW;->a:Lcom/kms/call/CallBlockerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, LmW;->a:Lcom/kms/call/CallBlockerActivity;

    invoke-static {v0}, Lcom/kms/call/CallBlockerActivity;->a(Lcom/kms/call/CallBlockerActivity;)LrW;

    move-result-object v0

    const-string v1, "CallBlocker"

    invoke-interface {v0, v1}, LrW;->b(Ljava/lang/String;)Z

    .line 117
    return-void
.end method
