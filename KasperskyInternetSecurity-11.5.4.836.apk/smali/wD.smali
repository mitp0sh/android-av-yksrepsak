.class public final LwD;
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
    .line 108
    iput-object p1, p0, LwD;->a:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, LwD;->a:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    invoke-virtual {v0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->finish()V

    .line 112
    return-void
.end method
