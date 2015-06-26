.class final LlV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:LlU;


# direct methods
.method constructor <init>(LlU;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, LlV;->a:LlU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, LlV;->a:LlU;

    iget-object v0, v0, LlU;->a:Lcom/kms/antispam/gui/ImportSMSNumberActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->b(Lcom/kms/antispam/gui/ImportSMSNumberActivity;)V

    .line 154
    return-void
.end method
