.class public final LqD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kms/kmsshared/KMSApplication;


# direct methods
.method public constructor <init>(Lcom/kms/kmsshared/KMSApplication;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, LqD;->a:Lcom/kms/kmsshared/KMSApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 467
    const-string v0, "KMS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initApp thread id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, LqD;->a:Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->d()V

    .line 469
    iget-object v0, p0, LqD;->a:Lcom/kms/kmsshared/KMSApplication;

    invoke-static {v0}, Lcom/kms/kmsshared/KMSApplication;->a(Lcom/kms/kmsshared/KMSApplication;)LsQ;

    move-result-object v0

    invoke-virtual {v0}, LsQ;->c()V

    .line 470
    return-void
.end method
