.class public final Lfo;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:[Ljava/lang/String;

.field private d:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lfo;->a:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lfo;->d:Landroid/widget/ListView;

    .line 28
    iget-object v0, p0, Lfo;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lfo;->b:Landroid/view/LayoutInflater;

    .line 29
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    invoke-interface {v0}, LaC;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 31
    :goto_0
    if-eqz v0, :cond_2

    .line 32
    invoke-static {}, Lqq;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a001e

    .line 36
    :goto_1
    iget-object v1, p0, Lfo;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfo;->c:[Ljava/lang/String;

    .line 38
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 32
    :cond_1
    const v0, 0x7f0a001f

    goto :goto_1

    .line 34
    :cond_2
    invoke-static {}, Lqq;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0a001c

    goto :goto_1

    :cond_3
    const v0, 0x7f0a001d

    goto :goto_1
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    invoke-static {p0}, Lff;->a(I)I

    move-result v1

    .line 113
    packed-switch v1, :pswitch_data_0

    .line 133
    :goto_0
    return-object v0

    .line 115
    :pswitch_0
    const-string v0, "ANTIVIRUS_SETTINGS_TAB"

    goto :goto_0

    .line 118
    :pswitch_1
    const-string v0, "PRIVACY_PROTECTION_SETTINGS_TAB"

    goto :goto_0

    .line 121
    :pswitch_2
    const-string v0, "ANTITHEFT_SETTINGS_TAB"

    goto :goto_0

    .line 124
    :pswitch_3
    const-string v0, "ANTISPAM_SETTINGS_TAB"

    goto :goto_0

    .line 127
    :pswitch_4
    const-string v0, "WEB_PROTECTION_SETTINGS_TAB"

    goto :goto_0

    .line 130
    :pswitch_5
    const-string v0, "ADDITIONAL_SETTINGS_TAB"

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private b(I)I
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lfo;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 138
    invoke-static {p1}, Lff;->a(I)I

    move-result v1

    .line 139
    packed-switch v1, :pswitch_data_0

    .line 177
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 141
    :pswitch_0
    if-eqz v0, :cond_0

    .line 142
    const v0, 0x7f020167

    goto :goto_0

    .line 144
    :cond_0
    const v0, 0x7f020166

    goto :goto_0

    .line 147
    :pswitch_1
    if-eqz v0, :cond_1

    .line 148
    const v0, 0x7f020169

    goto :goto_0

    .line 150
    :cond_1
    const v0, 0x7f020168

    goto :goto_0

    .line 153
    :pswitch_2
    if-eqz v0, :cond_2

    .line 154
    const v0, 0x7f020163

    goto :goto_0

    .line 156
    :cond_2
    const v0, 0x7f020162

    goto :goto_0

    .line 159
    :pswitch_3
    if-eqz v0, :cond_3

    .line 160
    const v0, 0x7f02015f

    goto :goto_0

    .line 162
    :cond_3
    const v0, 0x7f02015e

    goto :goto_0

    .line 165
    :pswitch_4
    if-eqz v0, :cond_4

    .line 166
    const v0, 0x7f02016b

    goto :goto_0

    .line 168
    :cond_4
    const v0, 0x7f02016a

    goto :goto_0

    .line 171
    :pswitch_5
    if-eqz v0, :cond_5

    .line 172
    const v0, 0x7f02015d

    goto :goto_0

    .line 174
    :cond_5
    const v0, 0x7f02015c

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lfo;->c:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 107
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    :goto_0
    const v0, 0x7f0b0182

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    iget-object v1, p0, Lfo;->c:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-direct {p0, p1}, Lfo;->b(I)I

    move-result v2

    .line 56
    const v1, 0x7f0b0126

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 57
    if-nez v2, :cond_1

    .line 59
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    :goto_1
    iget-object v1, p0, Lfo;->d:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    const v1, 0x7f020161

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 68
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    :goto_2
    invoke-static {p1}, Lfo;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 77
    return-object p2

    .line 50
    :cond_0
    iget-object v0, p0, Lfo;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03008b

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 72
    :cond_2
    const v1, -0xcacacb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method
