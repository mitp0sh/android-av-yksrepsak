.class public Lcom/kavsdk/shared/cellmon/FakeActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static a:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/kavsdk/shared/cellmon/FakeActivity;->a:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0}, Lcom/kavsdk/shared/cellmon/FakeActivity;->finish()V

    .line 15
    return-void
.end method
