.class public Lcom/kms/privacyprotection/gui/FakeActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"


# static fields
.field private static a:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/kms/privacyprotection/gui/FakeActivity;->a:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/FakeActivity;->finish()V

    .line 17
    return-void
.end method
