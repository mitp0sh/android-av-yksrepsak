.class final LsS;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:LsQ;


# direct methods
.method constructor <init>(LsQ;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, LsS;->a:LsQ;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 652
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->s()LcW;

    move-result-object v0

    invoke-virtual {v0}, LcW;->f()V

    .line 653
    return-void
.end method
