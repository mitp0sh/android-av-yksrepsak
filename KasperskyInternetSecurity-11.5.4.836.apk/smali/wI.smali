.class public final LwI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;


# direct methods
.method public constructor <init>(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;I)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, LwI;->b:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    iput p2, p0, LwI;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, LwI;->b:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    const v1, 0x7f070245

    invoke-virtual {v0, v1}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, LwI;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 227
    iget-object v0, p0, LwI;->b:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    const v2, 0x7f0b003f

    invoke-virtual {v0, v2}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    return-void
.end method
