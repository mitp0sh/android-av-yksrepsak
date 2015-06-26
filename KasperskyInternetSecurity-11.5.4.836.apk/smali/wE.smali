.class public final LwE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;


# direct methods
.method public constructor <init>(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, LwE;->a:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 102
    invoke-static {}, Lsr;->m()Lsy;

    move-result-object v0

    .line 103
    const/4 v1, 0x6

    iget-object v2, p0, LwE;->a:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    invoke-static {v2}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->a(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsy;->a(ILjava/lang/Object;)Lss;

    .line 104
    invoke-virtual {v0}, Lsy;->g_()V

    .line 105
    iget-object v0, p0, LwE;->a:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    invoke-virtual {v0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->finish()V

    .line 106
    return-void
.end method
