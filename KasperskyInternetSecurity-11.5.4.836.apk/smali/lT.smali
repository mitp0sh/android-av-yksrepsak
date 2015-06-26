.class final LlT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:LlS;


# direct methods
.method constructor <init>(LlS;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, LlT;->a:LlS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, LlT;->a:LlS;

    iget-object v0, v0, LlS;->a:Lcom/kms/antispam/gui/CallListActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/CallListActivity;->b(Lcom/kms/antispam/gui/CallListActivity;)V

    .line 199
    return-void
.end method
