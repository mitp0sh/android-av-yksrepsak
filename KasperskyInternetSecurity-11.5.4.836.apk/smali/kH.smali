.class public final LkH;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, LkH;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LkH;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, LkH;->b:I

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, LkH;->b:I

    .line 46
    iput p1, p0, LkH;->b:I

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    invoke-virtual {p0, v0}, LkH;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method private a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f070204

    const v2, 0x7f070201

    .line 123
    packed-switch p1, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 125
    :pswitch_0
    new-instance v0, LoI;

    const-string v1, "error-phone-dialog"

    invoke-direct {v0, v1}, LoI;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, v2}, LoI;->a(I)V

    .line 127
    const v1, 0x7f070202

    invoke-virtual {v0, v1}, LoI;->b(I)V

    .line 128
    invoke-virtual {v0, v3, v4}, LoI;->a(ILandroid/os/Bundle;)V

    .line 129
    invoke-virtual {v0}, LoI;->a()LoA;

    move-result-object v0

    invoke-virtual {p0}, LkH;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, LoA;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0

    .line 133
    :pswitch_1
    new-instance v0, LoI;

    const-string v1, "error-code-dialog"

    invoke-direct {v0, v1}, LoI;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, v2}, LoI;->a(I)V

    .line 135
    const v1, 0x7f070203

    invoke-virtual {v0, v1}, LoI;->b(I)V

    .line 136
    invoke-virtual {v0, v3, v4}, LoI;->a(ILandroid/os/Bundle;)V

    .line 137
    invoke-virtual {v0}, LoI;->a()LoA;

    move-result-object v0

    invoke-virtual {p0}, LkH;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, LoA;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-virtual {p0}, LkH;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v3, 0x7f0b01d3

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-virtual {p0}, LkH;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v4, 0x7f0b01d4

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 111
    :cond_0
    invoke-direct {p0, v1}, LkH;->a(I)V

    move v0, v2

    .line 119
    :goto_0
    return v0

    .line 115
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 116
    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, LkH;->a(I)V

    move v0, v2

    .line 117
    goto :goto_0

    :cond_3
    move v0, v1

    .line 119
    goto :goto_0
.end method

.method static synthetic a(LkH;)Z
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, LkH;->a()Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    .line 144
    invoke-virtual {p0}, LkH;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0b01d3

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {p0}, LkH;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0b01d4

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->getPasswordHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 148
    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 150
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    iget v1, p0, LkH;->b:I

    packed-switch v1, :pswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 157
    :pswitch_0
    const-string v1, "alarm:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->Alarm:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    .line 179
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/kms/kmsshared/Utils;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 181
    invoke-static {v1}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$SmsType;)V

    goto :goto_0

    .line 161
    :pswitch_1
    const-string v1, "wipe:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->DataWipe:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    goto :goto_1

    .line 165
    :pswitch_2
    const-string v1, "find:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->Locate:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    goto :goto_1

    .line 169
    :pswitch_3
    const-string v1, "hide:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->PrivacyProtection:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    goto :goto_1

    .line 173
    :pswitch_4
    const-string v1, "fullreset:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->FullReset:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    goto :goto_1

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic b(LkH;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, LkH;->b()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    iget v0, p0, LkH;->b:I

    if-ne v0, v2, :cond_0

    .line 56
    invoke-virtual {p0}, LkH;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "command"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, LkH;->b:I

    .line 58
    :cond_0
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 62
    new-instance v2, LoN;

    invoke-virtual {p0}, LkH;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v2, v0}, LoN;-><init>(Landroid/content/Context;)V

    .line 65
    iget v0, p0, LkH;->b:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 85
    :goto_0
    if-eq v0, v1, :cond_0

    .line 86
    invoke-virtual {v2, v0}, LoN;->a(I)LoN;

    .line 89
    :cond_0
    invoke-virtual {v2}, LoN;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a7

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, LoN;->a(Landroid/view/View;)LoN;

    .line 91
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, LoN;->a(Z)LoN;

    .line 92
    const v0, 0x7f070205

    new-instance v1, LkI;

    invoke-direct {v1, p0}, LkI;-><init>(LkH;)V

    invoke-virtual {v2, v0, v1}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    .line 102
    const v0, 0x7f070206

    invoke-virtual {v2, v0, v3}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    .line 104
    invoke-virtual {v2}, LoN;->b()LoM;

    move-result-object v0

    return-object v0

    .line 67
    :pswitch_0
    const v0, 0x7f0701fa

    .line 68
    goto :goto_0

    .line 70
    :pswitch_1
    const v0, 0x7f0701fb

    .line 71
    goto :goto_0

    .line 73
    :pswitch_2
    const v0, 0x7f0701fc

    .line 74
    goto :goto_0

    .line 76
    :pswitch_3
    const v0, 0x7f0701fd

    .line 77
    goto :goto_0

    .line 79
    :pswitch_4
    const v0, 0x7f0701fe

    .line 80
    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
