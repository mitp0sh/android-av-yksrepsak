.class public abstract LjM;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lrx;

.field private final c:Lkp;

.field private final d:I

.field private final e:I

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, LjJ;->c()Lcom/kms/KisTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/KisTheme;->getThemeResId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, LjM;-><init>(Landroid/app/Activity;II)V

    .line 70
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;II)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    iput-object v0, p0, LjM;->b:Lrx;

    .line 56
    new-instance v0, Lkp;

    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v1

    invoke-direct {v0, v1}, Lkp;-><init>(Lrx;)V

    iput-object v0, p0, LjM;->c:Lkp;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, LjM;->f:Z

    .line 73
    iput-object p1, p0, LjM;->a:Landroid/app/Activity;

    .line 74
    iput p2, p0, LjM;->d:I

    .line 75
    iput p3, p0, LjM;->e:I

    .line 76
    return-void
.end method

.method private static a(ZZ)Lcom/kaspersky/kts/gui/wizard/WizardType;
    .locals 1

    .prologue
    .line 194
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    .line 196
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/WizardType;->Agreements:Lcom/kaspersky/kts/gui/wizard/WizardType;

    .line 198
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/WizardType;->Main:Lcom/kaspersky/kts/gui/wizard/WizardType;

    goto :goto_0
.end method

.method private a(Lcom/kms/ActivityLifecycleEventType;)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, LjM;->b:Lrx;

    iget-object v1, p0, LjM;->a:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lcom/kms/ActivityLifecycleEventType;->newEvent(Landroid/app/Activity;)LjD;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 141
    return-void
.end method

.method private a(Lsz;ZZ)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 169
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, LjM;->a:Landroid/app/Activity;

    const-class v4, Lcom/kaspersky/kts/gui/wizard/WizardActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    const/high16 v3, 0x800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 172
    const/high16 v3, 0x20000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    const-string v3, "com_kms_wizard_type"

    invoke-static {p2, p3}, LjM;->a(ZZ)Lcom/kaspersky/kts/gui/wizard/WizardType;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 175
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v3

    invoke-virtual {v3}, Lsj;->k()Z

    move-result v3

    .line 177
    if-nez v3, :cond_1

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lsz;->a(ILjava/lang/Object;)Lss;

    .line 186
    :goto_0
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p1}, Lsz;->g_()V

    .line 190
    :cond_0
    iget-object v0, p0, LjM;->a:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 191
    return-void

    .line 181
    :cond_1
    if-nez p3, :cond_2

    .line 183
    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lsz;->a(ILjava/lang/Object;)Lss;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 147
    invoke-static {}, Lsr;->i()Lsz;

    move-result-object v0

    .line 149
    invoke-static {}, Lcom/kms/kmsshared/Utils;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v0}, Lsz;->b()Z

    move-result v1

    invoke-static {}, Lcom/kms/kmsshared/Utils;->u()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, LjM;->a(Lsz;ZZ)V

    .line 151
    iget-object v0, p0, LjM;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-direct {p0}, LjM;->j()Z

    goto :goto_0
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, LjM;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, LjM;->h()V

    .line 160
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 80
    iget-object v0, p0, LjM;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 83
    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 85
    iget v0, p0, LjM;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 87
    iget-object v0, p0, LjM;->a:Landroid/app/Activity;

    iget v1, p0, LjM;->e:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 90
    :cond_0
    iget-object v0, p0, LjM;->a:Landroid/app/Activity;

    iget v1, p0, LjM;->d:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 91
    return-void
.end method

.method public final a(II)V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, LjM;->b:Lrx;

    sget-object v1, Lcom/kms/ActivityLifecycleEventType;->OnActivityResult:Lcom/kms/ActivityLifecycleEventType;

    iget-object v2, p0, LjM;->a:Landroid/app/Activity;

    invoke-static {p1, p2}, LjE;->a(II)LjE;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kms/ActivityLifecycleEventType;->newEvent(Landroid/app/Activity;Ljava/lang/Object;)LjD;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 126
    return-void
.end method

.method public final a(Ljava/lang/Class;Lrz;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, LjM;->c:Lkp;

    invoke-virtual {v0, p1, p2}, Lkp;->a(Ljava/lang/Class;Lrz;)V

    .line 103
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, LjM;->f:Z

    .line 66
    return-void
.end method

.method protected b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, LjM;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 106
    iget-boolean v0, p0, LjM;->f:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/google/android/apps/analytics/easytracking/GA;->a()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    iget-object v1, p0, LjM;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 108
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity starts "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LjM;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, LjM;->i()V

    .line 114
    const/4 v0, 0x0

    invoke-static {v0}, Lqz;->a(Lgn;)V

    .line 115
    sget-object v0, Lcom/kms/ActivityLifecycleEventType;->Resumed:Lcom/kms/ActivityLifecycleEventType;

    invoke-direct {p0, v0}, LjM;->a(Lcom/kms/ActivityLifecycleEventType;)V

    .line 116
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lqz;->a()V

    .line 120
    iget-object v0, p0, LjM;->c:Lkp;

    invoke-virtual {v0}, Lkp;->a()V

    .line 121
    sget-object v0, Lcom/kms/ActivityLifecycleEventType;->Paused:Lcom/kms/ActivityLifecycleEventType;

    invoke-direct {p0, v0}, LjM;->a(Lcom/kms/ActivityLifecycleEventType;)V

    .line 122
    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 129
    iget-boolean v0, p0, LjM;->f:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lcom/google/android/apps/analytics/easytracking/GA;->a()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    iget-object v1, p0, LjM;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 131
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity stops "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LjM;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/kms/ActivityLifecycleEventType;->Destroyed:Lcom/kms/ActivityLifecycleEventType;

    invoke-direct {p0, v0}, LjM;->a(Lcom/kms/ActivityLifecycleEventType;)V

    .line 137
    return-void
.end method

.method protected abstract h()V
.end method
