.class public final LwF;
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
    .line 151
    iput-object p1, p0, LwF;->a:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, LwF;->a:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->a(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;I)I

    .line 155
    iget-object v0, p0, LwF;->a:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    invoke-static {v0}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->b(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;)V

    .line 156
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->d:Lwz;

    iget-object v1, p0, LwF;->a:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lwz;->a(Lt;Z)V

    .line 157
    return-void
.end method
