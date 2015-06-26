.class public final LrM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kms/kmsshared/cellmon/VoiceEvent;


# direct methods
.method public constructor <init>(Lcom/kms/kmsshared/cellmon/VoiceEvent;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, LrM;->a:Lcom/kms/kmsshared/cellmon/VoiceEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 102
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 103
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 104
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/kms/privacyprotection/gui/FakeActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    const/high16 v0, 0x4000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    const/high16 v0, 0x800000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    const/high16 v0, 0x8000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 111
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 113
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :catch_0
    move-exception v3

    .line 116
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 120
    :cond_0
    return-void
.end method
