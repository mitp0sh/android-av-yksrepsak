.class public final LwG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;


# direct methods
.method public constructor <init>(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, LwG;->a:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 165
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->d:Lwz;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lwz;->a(Lt;Z)V

    .line 166
    iget-object v0, p0, LwG;->a:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    invoke-static {v0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->c(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, LwG;->a:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    invoke-virtual {v0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->finish()V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, LwG;->a:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->showDialog(I)V

    goto :goto_0
.end method
