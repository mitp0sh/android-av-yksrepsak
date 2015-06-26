.class public final Lnt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loj;


# instance fields
.field private synthetic a:Lcom/kms/gui/KMSEnterCodeActivity;


# direct methods
.method public constructor <init>(Lcom/kms/gui/KMSEnterCodeActivity;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lnt;->a:Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 243
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    iget-object v0, p0, Lnt;->a:Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSEnterCodeActivity;->a(Lcom/kms/gui/KMSEnterCodeActivity;)Z

    move-result v0

    invoke-static {v0}, Lcom/kms/kmsshared/KMSApplication;->b(Z)V

    .line 244
    iget-object v0, p0, Lnt;->a:Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-virtual {v0}, Lcom/kms/gui/KMSEnterCodeActivity;->finish()V

    .line 245
    return-void
.end method

.method public final a(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lnt;->a:Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-static {v0, p1}, Lcom/kms/gui/KMSEnterCodeActivity;->a(Lcom/kms/gui/KMSEnterCodeActivity;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    .line 250
    iget-object v0, p0, Lnt;->a:Lcom/kms/gui/KMSEnterCodeActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kms/gui/KMSEnterCodeActivity;->showDialog(I)V

    .line 251
    return-void
.end method
